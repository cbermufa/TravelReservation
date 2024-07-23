using Microsoft.AspNetCore.Mvc;
using TravelReservation.Models;
using System.Collections.Generic;

namespace TravelReservation.Controllers
{
    public class CartController : Controller
    {
        public IActionResult Index()
        {
            // Este es un ejemplo, puedes obtener los vuelos del carrito desde el localStorage en el cliente
            var flights = new List<Flight>();

            // Devolver la vista con los vuelos en el carrito
            return View(flights);
        }
    }
}
