using System.ComponentModel.DataAnnotations;

namespace TravelReservation.ViewModels
{
    public class LoginViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; } = string.Empty; // Inicializo la propiedad con un valor predeterminado

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; } = string.Empty; // Inicializo la propiedad con un valor predeterminado

        [Display(Name = "Recordarme")]
        public bool RememberMe { get; set; }
    }
}
