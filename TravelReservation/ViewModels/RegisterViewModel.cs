using System.ComponentModel.DataAnnotations;

namespace TravelReservation.ViewModels
{
    public class RegisterViewModel
    {
        [Required(ErrorMessage = "El nombre es obligatorio.")]
        [StringLength(50, ErrorMessage = "El nombre no puede tener más de 50 caracteres.")]
        public string Name { get; set; } = string.Empty;

        [Required(ErrorMessage = "El correo electrónico es obligatorio.")]
        [EmailAddress(ErrorMessage = "El correo electrónico no es válido.")]
        public string Email { get; set; } = string.Empty; //inicializo vacío para eliminar la advertencia

        [Required(ErrorMessage = "La contraseña es obligatoria.")]
        [DataType(DataType.Password)]
        [StringLength(20, ErrorMessage = "La contraseña debe tener al menos {2} y máximo {1} caracteres.", MinimumLength = 6)]
        public string Password { get; set; } = string.Empty; //inicializo vacío para eliminar la advertencia

        [Required(ErrorMessage = "La confirmación de la contraseña es obligatoria.")]
        [DataType(DataType.Password)]
        [Compare("Password", ErrorMessage = "Las contraseñas no coinciden.")]
        public string ConfirmPassword { get; set; } = string.Empty; //inicializo vacío para eliminar la advertencia
    }
}
