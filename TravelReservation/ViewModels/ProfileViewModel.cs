using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TravelReservation.ViewModels
{
    public class ProfileViewModel
    {
        [Required(ErrorMessage = "El nombre es obligatorio.")]
        [StringLength(50, ErrorMessage = "El nombre no puede tener más de 50 caracteres.")]
        public string Name { get; set; } = string.Empty;

        [Required(ErrorMessage = "El correo electrónico es obligatorio.")]
        [EmailAddress(ErrorMessage = "El correo electrónico no es válido.")]
        public string Email { get; set; } = string.Empty;

        [MinLength(6, ErrorMessage = "El número de teléfono debe tener al menos 6 caracteres.")]
        [MaxLength(20, ErrorMessage = "El número de teléfono no puede tener más de 20 caracteres.")]
        public string PhoneNumber { get; set; } = string.Empty;

        [DataType(DataType.Password)]
        [StringLength(20, MinimumLength = 6, ErrorMessage = "La contraseña debe tener entre 6 y 20 caracteres.")]
        [RegularExpression(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).+$", ErrorMessage = "La contraseña debe contener al menos una letra mayúscula, una letra minúscula, un número y un carácter especial.")]
        public string Password { get; set; } = string.Empty;

        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "La contraseña y la confirmación de la contraseña no coinciden.")]
        public string ConfirmPassword { get; set; } = string.Empty;

        public int PreferredSeat { get; set; } = 0; // Preferencias de asiento
        public int PreferredMeal { get; set; } = 0; // Preferencias de comida
        public int PreferredAirline { get; set; } = 0; // Aerolínea preferida

        public List<ReservationViewModel> Reservations { get; set; } = new List<ReservationViewModel>();
    }

    public class ReservationViewModel
    {
        public string FlightNumber { get; set; } = string.Empty;
        public string Date { get; set; } = string.Empty;
        public string Destination { get; set; } = string.Empty;
    }
}
