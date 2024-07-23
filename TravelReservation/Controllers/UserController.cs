using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TravelReservation.Data;
using TravelReservation.Models;
using System.Threading.Tasks;

namespace TravelReservation.Controllers
{
    // Definición de la clase UserController que hereda de Controller
    public class UserController : Controller
    {
        // Campo privado para almacenar el contexto de la base de datos
        private readonly ApplicationDbContext _context;

        // Constructor que recibe el contexto de la base de datos como parámetro
        public UserController(ApplicationDbContext context)
        {
            _context = context;
        }

        // Acción para listar usuarios
        public async Task<IActionResult> Index()
        {
            // Obtiene todos los usuarios de la base de datos de manera asíncrona
            var users = await _context.Users.ToListAsync();

            // Devuelve una vista con la lista de usuarios
            return View(users);
        }

        // Acción para crear un nuevo usuario (GET)
        public IActionResult Create()
        {
            // Devuelve una vista para crear un nuevo usuario
            return View();
        }

        // Acción para crear un nuevo usuario (POST)
        [HttpPost] // Indica que esta acción responde a peticiones POST
        [ValidateAntiForgeryToken] // Ayuda a prevenir ataques CSRF
        public async Task<IActionResult> Create(User user)
        {
            // Verifica si el modelo de usuario recibido es válido según las validaciones definidas en el modelo
            if (ModelState.IsValid)
            {
                // Agrega el usuario al contexto de la base de datos
                _context.Add(user);

                // Guarda los cambios de manera asíncrona en la base de datos
                await _context.SaveChangesAsync();

                // Redirige a la acción Index para mostrar la lista actualizada de usuarios
                return RedirectToAction(nameof(Index));
            }

            // Si el modelo no es válido, devuelve la vista con el usuario para que se corrijan los errores
            return View(user);
        }
    }
}
