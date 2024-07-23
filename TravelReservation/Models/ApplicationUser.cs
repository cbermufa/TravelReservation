using Microsoft.AspNetCore.Identity;

namespace TravelReservation.Models
{
    public class ApplicationUser : IdentityUser
    {
        public string Name { get; set; } = string.Empty;
    }
}
