using System.ComponentModel.DataAnnotations;

namespace TravelReservation.Models
{
    public class FlightSegment
    {
        [Key]
        public int Id { get; set; }
        public string Origin { get; set; } = string.Empty;
        public string Destination { get; set; } = string.Empty;
        public string DepartureDate { get; set; } = string.Empty;
        public string ArrivalDate { get; set; } = string.Empty;

        public int TicketsPurchased; 

        // Añade la relación con Flight
        public int FlightId { get; set; }
        public Flight Flight { get; set; }
    }
}
