using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;
using TravelReservation.Data;
using TravelReservation.Models;
using TravelReservation.ViewModels;

namespace TravelReservation.Controllers
{
    public class UserProfileController : Controller
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ApplicationDbContext _context;


        public UserProfileController(UserManager<ApplicationUser> userManager, ApplicationDbContext context)
        {
            _userManager = userManager;
            _context = context;
        }

        // Acción para ver el perfil del usuario
        public async Task<IActionResult> Index()
        {
            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }

            var model = new UserProfileViewModel
            {
                UserId = user.Id,
                Name = user.Name,
                Email = user.Email,
                PhoneNumber = user.PhoneNumber
            };

            return View(model);
        }

        // Acción para actualizar el perfil del usuario
        [HttpPost]
        public async Task<IActionResult> Index(UserProfileViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            var user = await _userManager.GetUserAsync(User);
            if (user == null)
            {
                return RedirectToAction("Login", "Account");
            }

            user.UserName = model.Name;
            user.Email = model.Email;
            user.PhoneNumber = model.PhoneNumber;

            var result = await _userManager.UpdateAsync(user);
            if (result.Succeeded)
            {
                TempData["SuccessMessage"] = "Perfil actualizado exitosamente!";
                return RedirectToAction("Index", "Home");
            }

            foreach (var error in result.Errors)
            {
                ModelState.AddModelError(string.Empty, error.Description);
            }

            return View(model);
        }
    }
}
