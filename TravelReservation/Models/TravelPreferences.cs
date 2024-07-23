using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace TravelReservation.Models
{
    public class TravelPreferences
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("ApplicationUser")]
        public string UserId { get; set; } = string.Empty;
        public ApplicationUser User { get; set; }
        public int PreferredSeat { get; set; }
        public int PreferredMeal { get; set; }
        public int PreferredAirline { get; set; }
    }
}
