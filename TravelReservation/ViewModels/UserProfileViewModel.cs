using System.ComponentModel.DataAnnotations;

namespace TravelReservation.ViewModels
{
    public class UserProfileViewModel
    {
        [Required]
        public string UserId { get; set; } = string.Empty; // Inicializo con un valor predeterminado

        [Required]
        [Display(Name = "Nombre")]
        public string Name { get; set; } = string.Empty; // Inicializo con un valor predeterminado

        [Required]
        [EmailAddress]
        [Display(Name = "Correo Electrónico")]
        public string Email { get; set; } = string.Empty; // Inicializo con un valor predeterminado

        [Phone]
        [Display(Name = "Número de Teléfono")]
        public string PhoneNumber { get; set; } = string.Empty; // Inicializo con un valor predeterminado
    }
}
