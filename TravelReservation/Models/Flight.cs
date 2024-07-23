using System.ComponentModel.DataAnnotations;

namespace TravelReservation.Models
{
    public class Flight
    {
        [Key]
        public int Id { get; set; }

        [Required(ErrorMessage = "El campo de origen es obligatorio.")]
        [Display(Name = "Origen")]
        public string Origin { get; set; } = string.Empty;

        [Required(ErrorMessage = "El campo de destino es obligatorio.")]
        [Display(Name = "Destino")]
        public string Destination { get; set; } = string.Empty;

        [Required(ErrorMessage = "El campo de fecha de salida es obligatorio.")]
        [Display(Name = "Fecha de Salida")]
        public string DepartureDate { get; set; } = string.Empty;

        [Required(ErrorMessage = "El campo de fecha de llegada es obligatorio.")]
        [Display(Name = "Fecha de Llegada")]
        public string ArrivalDate { get; set; } = string.Empty;

        [Display(Name = "Asientos Comprados")]
        public int TicketsPurchased { get; set; }

        [Display(Name = "Fecha de Compra")]
        public DateTime? PurchaseDate { get; set; }

        public string UserId { get; set; }

        public List<FlightSegment> Segments { get; set; } = new List<FlightSegment>();
    }
}
