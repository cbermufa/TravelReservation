using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.Json;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using TravelReservation.Models;

namespace TravelReservation.Services
{
    public class AmadeusService
    {
        private readonly HttpClient _httpClient;
        private readonly string _apiKey;
        private readonly string _apiSecret;
        private string _accessToken;

        public AmadeusService(HttpClient httpClient, IConfiguration configuration)
        {
            _httpClient = httpClient;
            _apiKey = configuration["Amadeus:ApiKey"] ?? throw new ArgumentNullException(nameof(_apiKey));
            _apiSecret = configuration["Amadeus:ApiSecret"] ?? throw new ArgumentNullException(nameof(_apiSecret));
            _accessToken = string.Empty;
        }

        private async Task AuthenticateAsync()
        {
            var request = new HttpRequestMessage(HttpMethod.Post, "https://test.api.amadeus.com/v1/security/oauth2/token");
            request.Content = new StringContent($"grant_type=client_credentials&client_id={_apiKey}&client_secret={_apiSecret}", System.Text.Encoding.UTF8, "application/x-www-form-urlencoded");

            var response = await _httpClient.SendAsync(request);

            var responseBody = await response.Content.ReadAsStringAsync();
            if (!response.IsSuccessStatusCode)
            {
                throw new Exception($"Error en la autenticación: {response.StatusCode} - {responseBody}");
            }

            var jsonDocument = JsonDocument.Parse(responseBody);
            _accessToken = jsonDocument.RootElement.GetProperty("access_token").GetString();
        }

        public async Task<string> GetFlightOffersAsync(string origin, string destination, string departureDate, int adults)
        {
            if (string.IsNullOrEmpty(_accessToken))
            {
                await AuthenticateAsync();
            }

            var request = new HttpRequestMessage(HttpMethod.Get, $"https://test.api.amadeus.com/v2/shopping/flight-offers?originLocationCode={origin}&destinationLocationCode={destination}&departureDate={departureDate}&adults={adults}&max=20");
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", _accessToken);

            var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseData = await response.Content.ReadAsStringAsync();
            return responseData;
        }

        public async Task<CityInfo> GetCityByIataCodeAsync(string code)
        {
            if (string.IsNullOrEmpty(_accessToken))
            {
                await AuthenticateAsync();
            }

            var request = new HttpRequestMessage(HttpMethod.Get, $"https://test.api.amadeus.com/v1/reference-data/locations?subType=CITY,AIRPORT&keyword={code}&page[limit]=1");
            request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", _accessToken);

            var response = await _httpClient.SendAsync(request);
            if (!response.IsSuccessStatusCode)
            {
                throw new Exception("Error al obtener la ciudad de Amadeus API");
            }

            var responseBody = await response.Content.ReadAsStringAsync();
            var jsonDocument = JsonDocument.Parse(responseBody);
            var cityElement = jsonDocument.RootElement.GetProperty("data")[0];

            var cityInfo = new CityInfo
            {
                City = cityElement.GetProperty("address").GetProperty("cityName").GetString(),
                Country = cityElement.GetProperty("address").GetProperty("countryName").GetString(),
                IataCode = cityElement.GetProperty("iataCode").GetString()
            };

            return cityInfo;
        }

    }


    public class FlightOfferResponse
    {
        public List<FlightOffer> Data { get; set; }
    }
}
