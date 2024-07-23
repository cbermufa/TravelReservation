using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System.Reflection.Emit;
using TravelReservation.Models;

namespace TravelReservation.Data
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {
        }


        public DbSet<TravelPreferences> TravelPreferences { get; set; } // Agrego el DbSet para la entidad TravelPreferences de la BD
        public DbSet<Flight> Flights { get; set; } // Agrego el DbSet para la entidad Flights de la BD
        public DbSet<FlightSegment> FlightSegments { get; set; }  // Agrego el DbSet para la entidad Segmentos de Vuelo de la BD
        public DbSet<Reservation> Reservations { get; set; } // Agrego el DbSet para la entidad Reservation de la BD
        public DbSet<SeatPreference> SeatPreferences { get; set; } // Agrego el DbSet para la entidad SeatPreference de la BD
        public DbSet<MealPreference> MealPreferences { get; set; } // Agrego el DbSet para la entidad MealPreference de la BD
        public DbSet<AirlinePreference> AirlinePreferences { get; set; } // Agrego el DbSet para la entidad AirlinePreference de la BD
        public DbSet<CityInfo> Cities { get; set; } // Agrego el DbSet para la entidad Cities de la BD

        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);

            // Configuración de la relación entre TravelPreferences y ApplicationUser
            builder.Entity<TravelPreferences>()
                .HasOne(tp => tp.User)
                .WithMany()
                .HasForeignKey(tp => tp.UserId)
                .OnDelete(DeleteBehavior.Cascade);

            builder.Entity<Flight>()
                .HasMany(f => f.Segments)
                .WithOne(s => s.Flight)
                .HasForeignKey(s => s.FlightId);
        }
    }
}
