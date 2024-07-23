using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;
using TravelReservation.Data;
using TravelReservation.Models;

namespace TravelReservation.Controllers
{
    public class ReservationController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ReservationController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Acción para mostrar la lista de reservas
        public async Task<IActionResult> Index()
        {
            var reservations = await _context.Reservations.Include(r => r.Flight).ToListAsync();
            return View(reservations);
        }

        // Acción para crear una nueva reserva
        public async Task<IActionResult> Create(int flightId)
        {
            var userId = User.Identity?.Name; // Obtenemos el ID del usuario actual
            if (userId == null)
            {
                return RedirectToAction("Login", "Account"); // Se redirige al login si userId es nulo
            }

            var reservation = new Reservation
            {
                FlightId = flightId,
                UserId = userId
            };
            _context.Add(reservation);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

    }
}
