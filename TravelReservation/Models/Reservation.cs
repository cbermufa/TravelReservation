using System;
using System.ComponentModel.DataAnnotations;

namespace TravelReservation.Models
{
    public class Reservation
    {
        public int Id { get; set; }

        [Required]
        public int FlightId { get; set; }

        [Required]
        public string UserId { get; set; } = string.Empty; // Inicializo la propiedad con un valor predeterminado


        [Required]
        public DateTime ReservationDate { get; set; } = DateTime.Now;

        public Flight? Flight { get; set; }
    }
}
