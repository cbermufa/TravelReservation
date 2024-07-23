using System.ComponentModel.DataAnnotations;

namespace TravelReservation.Models
{
    public class User
    {
        public int Id { get; set; }

        // Defino la propiedad Name con validaciones
        [Required]
        [StringLength(100)]
        public string Name { get; set; } = string.Empty; // Inicializo con un valor predeterminado

        // Defino la propiedad Email con validaciones
        [Required]
        [EmailAddress]
        public string Email { get; set; } = string.Empty; // Inicializo con un valor predeterminado

        // Defino la propiedad Password con validaciones
        [Required]
        [StringLength(100)]
        public string Password { get; set; } = string.Empty; // Inicializo con un valor predeterminado
    }
}
