using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using TravelReservation.Models;
using TravelReservation.Services;
using TravelReservation.Data;
using Microsoft.EntityFrameworkCore;

namespace TravelReservation.Controllers
{
    public class FlightController : Controller
    {
        private readonly AmadeusService _amadeusService;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ApplicationDbContext _context;

        public FlightController(AmadeusService amadeusService, UserManager<ApplicationUser> userManager, ApplicationDbContext context)
        {
            _amadeusService = amadeusService;
            _userManager = userManager;
            _context = context;
        }

        // Acción para mostrar el formulario de búsqueda de vuelos
        [HttpGet]
        public IActionResult Search()
        {
            var model = new SearchViewModel();
            return View(model);
        }

        // Acción GET para obtener ofertas de vuelos en formato JSON
        [HttpGet("api/Flight/GetFlightOffers")]
        public async Task<IActionResult> GetFlightOffers(string origin, string destination, string departureDate, int adults)
        {
            var flightOffers = await _amadeusService.GetFlightOffersAsync(origin, destination, departureDate, adults);
            return Ok(flightOffers);
        }

        // Acción GET para mostrar las reservaciones
        [HttpGet]
        public async Task<IActionResult> Reservations()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return Unauthorized();
            }

            var reservations = await _context.Flights.Where(f => f.UserId == user.Id).ToListAsync();
            return View(reservations);
        }

        [HttpPost("api/Flight/Checkout")]
        public async Task<IActionResult> Checkout([FromBody] List<FlightSegment> segments)
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return Unauthorized();
            }

            foreach (var segment in segments)
            {
                var newFlight = new Flight
                {
                    Origin = segment.Origin,
                    Destination = segment.Destination,
                    DepartureDate = segment.DepartureDate,
                    ArrivalDate = segment.ArrivalDate,
                    TicketsPurchased = segment.TicketsPurchased,
                    UserId = user.Id,
                    PurchaseDate = DateTime.Now
                };

                _context.Flights.Add(newFlight);
            }

            await _context.SaveChangesAsync();

            return Ok();
        }

    }
}
