namespace TravelReservation.Models
{
    public class CityInfo
    {
        public int Id { get; set; } // Agrega esta propiedad si necesitas una clave primaria
        public string City { get; set; } = string.Empty;
        public string Country { get; set; } = string.Empty;
        public string IataCode { get; set; } = string.Empty;

        public string Airport { get; set; } = string.Empty;
    }

}
