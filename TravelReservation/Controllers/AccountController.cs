using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TravelReservation.Data;
using TravelReservation.Models;
using TravelReservation.ViewModels;
using System.Threading.Tasks;
using System.Linq;
using Microsoft.Data.SqlClient;

namespace TravelReservation.Controllers
{
    public class AccountController : Controller
    {
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ApplicationDbContext _context;

        public AccountController(SignInManager<ApplicationUser> signInManager, UserManager<ApplicationUser> userManager, ApplicationDbContext context)
        {
            _signInManager = signInManager;
            _userManager = userManager;
            _context = context;
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Login(LoginViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var result = await _signInManager.PasswordSignInAsync(model.Email, model.Password, model.RememberMe, false);

            if (result.Succeeded)
            {
                TempData["SuccessMessage"] = "Inicio de sesión exitoso!";
                return RedirectToAction("Index", "Home");
            }
            else
            {
                TempData["ErrorMessage"] = "Inicio de sesión fallido. Verifique su correo electrónico y contraseña.";
                return View(model);
            }
        }

        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Register(RegisterViewModel model)
        {
            if (ModelState.IsValid)
            {
                var user = new ApplicationUser { UserName = model.Email, Email = model.Email, Name = model.Name };
                try
                {
                    var result = await _userManager.CreateAsync(user, model.Password);
                    if (result.Succeeded)
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                        TempData["SuccessMessage"] = "Registro exitoso!";
                        return RedirectToAction("Index", "Home");
                    }
                    foreach (var error in result.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }
                }
                catch (SqlException ex) when (ex.Number == 208) // Número de error 208 indica que la tabla no existe en SQL Server.
                {
                    ModelState.AddModelError(string.Empty, "Error en la base de datos: La tabla no existe.");
                    Console.WriteLine($"Error al registrar el usuario: {ex.Message}");
                }
                catch (SqlException ex)
                {
                    ModelState.AddModelError(string.Empty, $"Error en la base de datos: {ex.Message}");
                    Console.WriteLine($"Error al registrar el usuario: {ex.Message}");
                }
                catch (Exception ex)
                {
                    ModelState.AddModelError(string.Empty, $"Error al registrar el usuario: {ex.Message}");
                    Console.WriteLine($"Error al registrar el usuario: {ex.Message}");
                }
            }
            else
            {
                // Validación del modelo fallida
                ModelState.AddModelError(string.Empty, "Hay errores en el formulario.");
            }
            return View(model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Logout()
        {
            await _signInManager.SignOutAsync();
            TempData["SuccessMessage"] = "Sesión cerrada exitosamente!";
            return RedirectToAction("Index", "Home");
        }

        [HttpGet]
        public async Task<IActionResult> EditProfile()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return RedirectToAction("Login");
            }

            var preferences = await _context.TravelPreferences
                .FirstOrDefaultAsync(p => p.UserId == user.Id);

            var model = new ProfileViewModel
            {
                Name = user.Name,
                Email = user.Email,
                PhoneNumber = user.PhoneNumber,
                PreferredSeat = preferences?.PreferredSeat ?? 0, // 0 para 'Sin Preferencia'
                PreferredMeal = preferences?.PreferredMeal ?? 0, // 0 para 'Sin Preferencia'
                PreferredAirline = preferences?.PreferredAirline ?? 0 // 0 para 'Sin Preferencia'
            };

            // Cargar listas de opciones desde la base de datos
            ViewData["SeatOptions"] = await _context.SeatPreferences.ToListAsync();
            ViewData["MealOptions"] = await _context.MealPreferences.ToListAsync();
            ViewData["AirlineOptions"] = await _context.AirlinePreferences.ToListAsync();

            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> EditProfile(ProfileViewModel model)
        {
            if (!ModelState.IsValid)
            {
                // Recargar listas de opciones en caso de error
                ViewData["SeatOptions"] = await _context.SeatPreferences.ToListAsync();
                ViewData["MealOptions"] = await _context.MealPreferences.ToListAsync();
                ViewData["AirlineOptions"] = await _context.AirlinePreferences.ToListAsync();
                return Json(new { success = false, errors = ModelState.ToDictionary(kvp => kvp.Key, kvp => kvp.Value.Errors.Select(e => e.ErrorMessage).FirstOrDefault()) });
            }

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return Json(new { success = false, errors = new { Login = "El usuario no está autenticado." } });
            }

            user.Name = model.Name;
            user.PhoneNumber = model.PhoneNumber;

            var preferences = await _context.TravelPreferences
                .FirstOrDefaultAsync(p => p.UserId == user.Id);

            if (preferences == null)
            {
                preferences = new TravelPreferences
                {
                    UserId = user.Id,
                    PreferredSeat = model.PreferredSeat == 0 ? 0 : model.PreferredSeat,
                    PreferredMeal = model.PreferredMeal == 0 ? 0 : model.PreferredMeal,
                    PreferredAirline = model.PreferredAirline == 0 ? 0 : model.PreferredAirline
                };
                _context.TravelPreferences.Add(preferences);
            }
            else
            {
                preferences.PreferredSeat = model.PreferredSeat == 0 ? 0 : model.PreferredSeat;
                preferences.PreferredMeal = model.PreferredMeal == 0 ? 0 : model.PreferredMeal;
                preferences.PreferredAirline = model.PreferredAirline == 0 ? 0 : model.PreferredAirline;
                _context.TravelPreferences.Update(preferences);
            }

            if (!string.IsNullOrEmpty(model.Password))
            {
                var removePasswordResult = await _userManager.RemovePasswordAsync(user);
                if (!removePasswordResult.Succeeded)
                {
                    foreach (var error in removePasswordResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }

                    // Recargar listas de opciones en caso de error
                    ViewData["SeatOptions"] = await _context.SeatPreferences.ToListAsync();
                    ViewData["MealOptions"] = await _context.MealPreferences.ToListAsync();
                    ViewData["AirlineOptions"] = await _context.AirlinePreferences.ToListAsync();
                    return Json(new { success = false, errors = ModelState.ToDictionary(kvp => kvp.Key, kvp => kvp.Value.Errors.Select(e => e.ErrorMessage).FirstOrDefault()) });
                }

                var addPasswordResult = await _userManager.AddPasswordAsync(user, model.Password);
                if (!addPasswordResult.Succeeded)
                {
                    foreach (var error in addPasswordResult.Errors)
                    {
                        ModelState.AddModelError(string.Empty, error.Description);
                    }

                    // Recargar listas de opciones en caso de error
                    ViewData["SeatOptions"] = await _context.SeatPreferences.ToListAsync();
                    ViewData["MealOptions"] = await _context.MealPreferences.ToListAsync();
                    ViewData["AirlineOptions"] = await _context.AirlinePreferences.ToListAsync();
                    return Json(new { success = false, errors = ModelState.ToDictionary(kvp => kvp.Key, kvp => kvp.Value.Errors.Select(e => e.ErrorMessage).FirstOrDefault()) });
                }
            }

            var result = await _userManager.UpdateAsync(user);
            if (!result.Succeeded)
            {
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }

                // Recargar listas de opciones en caso de error
                ViewData["SeatOptions"] = await _context.SeatPreferences.ToListAsync();
                ViewData["MealOptions"] = await _context.MealPreferences.ToListAsync();
                ViewData["AirlineOptions"] = await _context.AirlinePreferences.ToListAsync();
                return Json(new { success = false, errors = ModelState.ToDictionary(kvp => kvp.Key, kvp => kvp.Value.Errors.Select(e => e.ErrorMessage).FirstOrDefault()) });
            }

            await _context.SaveChangesAsync();

            TempData["SuccessMessage"] = "Perfil actualizado exitosamente!";
            return Json(new { success = true });
        }

        // Acción para verificar si el usuario está autenticado
        [HttpGet("api/Account/IsAuthenticated")]
        public IActionResult IsAuthenticated()
        {
            if (User.Identity.IsAuthenticated)
            {
                return Ok(true);
            }
            return Ok(false);
        }

    }
}
