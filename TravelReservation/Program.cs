using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Localization;
using Microsoft.EntityFrameworkCore;
using System.Globalization;
using TravelReservation.Data;
using TravelReservation.Models;
using TravelReservation.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

// Configuración de la localización
builder.Services.AddLocalization(options => options.ResourcesPath = "Resources");

builder.Services.Configure<RequestLocalizationOptions>(options =>
{
    var supportedCultures = new List<CultureInfo>
    {
        new CultureInfo("es"),
        new CultureInfo("en")
    };
    options.DefaultRequestCulture = new RequestCulture("es");
    options.SupportedCultures = supportedCultures;
    options.SupportedUICultures = supportedCultures;
});

// DbContext para la conexión con la base de datos
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// Servicios de Identity
builder.Services.AddDefaultIdentity<ApplicationUser>(options =>
{
    options.Password.RequireDigit = true;
    options.Password.RequireLowercase = true;
    options.Password.RequireNonAlphanumeric = true;
    options.Password.RequireUppercase = true;
    options.Password.RequiredLength = 6;
    options.Password.RequiredUniqueChars = 1;
})
.AddEntityFrameworkStores<ApplicationDbContext>()
.AddDefaultTokenProviders();


// Registro de AmadeusService
builder.Services.AddHttpClient<AmadeusService>();

var app = builder.Build();

// Configuración the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
