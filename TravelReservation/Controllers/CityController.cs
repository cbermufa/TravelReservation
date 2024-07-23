using Microsoft.AspNetCore.Mvc;
using System.Net.Http;
using System.Threading.Tasks;
using System.Text.Json;
using Microsoft.Extensions.Configuration;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using TravelReservation.Services;
using TravelReservation.Data;
using TravelReservation.Models;

namespace TravelReservation.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CityController : ControllerBase
    {
        private readonly HttpClient _httpClient;
        private readonly string _apiKey;
        private readonly string _apiSecret;
        private string _accessToken = string.Empty;
        private readonly AmadeusService _amadeusService;
        private readonly ApplicationDbContext _context;

        private static readonly Dictionary<string, string> CountryTranslations = new Dictionary<string, string>
        {
            // Para traducir países 
        };

        public CityController(HttpClient httpClient, IConfiguration configuration, AmadeusService amadeusService, ApplicationDbContext context)
        {
            _httpClient = httpClient;
            _apiKey = configuration["Amadeus:ApiKey"] ?? throw new ArgumentNullException(nameof(_apiKey));
            _apiSecret = configuration["Amadeus:ApiSecret"] ?? throw new ArgumentNullException(nameof(_apiSecret));
            _accessToken = string.Empty;
            _amadeusService = amadeusService ?? throw new ArgumentNullException(nameof(_amadeusService));
            _context = context ?? throw new ArgumentNullException(nameof(_context));
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

        [HttpGet("GetCities")]
        public async Task<IActionResult> GetCities(string term)
        {
            // Primero intentamos obtener ciudades desde la base de datos
            var cities = await _context.Cities
                .Where(c => c.City.Contains(term) || c.IataCode.Contains(term))
                .Select(c => new { label = $"{c.City} ({c.IataCode}), {c.Country}", value = c.City, code = c.IataCode })
                .ToListAsync();

            if (cities.Any())
            {
                return Ok(cities);
            }

            // Si no hay resultados en la base de datos, llamamos a la API de Amadeus
            if (string.IsNullOrEmpty(_accessToken))
            {
                await AuthenticateAsync();
            }

            var requestUrl = $"https://test.api.amadeus.com/v1/reference-data/locations?subType=AIRPORT&keyword={term}&page[limit]=5";
            var request = new HttpRequestMessage(HttpMethod.Get, requestUrl);
            request.Headers.Add("Authorization", $"Bearer {_accessToken}");

            var response = await _httpClient.SendAsync(request);
            response.EnsureSuccessStatusCode();

            var responseBody = await response.Content.ReadAsStringAsync();
            var jsonDocument = JsonDocument.Parse(responseBody);
            var locations = jsonDocument.RootElement.GetProperty("data");

            var result = new List<object>();
            foreach (var location in locations.EnumerateArray())
            {
                var city = location.GetProperty("address").GetProperty("cityName").GetString();
                var country = location.GetProperty("address").GetProperty("countryName").GetString();
                var code = location.GetProperty("iataCode").GetString();
                var detailedName = location.GetProperty("name").GetString();

                if (!string.IsNullOrEmpty(country) && CountryTranslations.ContainsKey(country))
                {
                    country = CountryTranslations[country];
                }

                var formattedLocation = $"{city} ({code}), {country}";
                result.Add(new { label = formattedLocation, code = code });
            }

            return Ok(result);
        }

        [HttpGet("GetCityByIataCode")]
        public async Task<IActionResult> GetCityByIataCode(string code)
        {
            if (string.IsNullOrEmpty(code))
            {
                return BadRequest("El código IATA es requerido.");
            }

            // Primero intentamos obtener la ciudad desde la base de datos
            var cityInfo = await _context.Cities
                .FirstOrDefaultAsync(c => c.IataCode == code);

            if (cityInfo != null)
            {
                return Ok(new { cityInfo.City, cityInfo.Country, cityInfo.Airport });
            }

            // Si no se encuentra en la base de datos, llamamos a la API de Amadeus
            try
            {
                var cityFromApi = await _amadeusService.GetCityByIataCodeAsync(code);
                return Ok(cityFromApi);
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex.Message}");
            }
        }
    }
}
