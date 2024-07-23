using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TravelReservation.Migrations
{
    /// <inheritdoc />
    public partial class ConfigureFlightAndFlightSegmentKeys : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Price",
                table: "Flights");

            migrationBuilder.RenameColumn(
                name: "AvailableSeats",
                table: "Flights",
                newName: "TicketsPurchased");

            migrationBuilder.AlterColumn<string>(
                name: "DepartureDate",
                table: "Flights",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(DateTime),
                oldType: "datetime2");

            migrationBuilder.AlterColumn<string>(
                name: "ArrivalDate",
                table: "Flights",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(DateTime),
                oldType: "datetime2");

            migrationBuilder.AddColumn<DateTime>(
                name: "PurchaseDate",
                table: "Flights",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "UserId",
                table: "Flights",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.CreateTable(
                name: "AirlinePreferences",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AirlinePreferences", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Cities",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    City = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Country = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IataCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Airport = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Cities", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "FlightSegments",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Origin = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Destination = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DepartureDate = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ArrivalDate = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    FlightId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FlightSegments", x => x.Id);
                    table.ForeignKey(
                        name: "FK_FlightSegments_Flights_FlightId",
                        column: x => x.FlightId,
                        principalTable: "Flights",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "MealPreferences",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MealPreferences", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "SeatPreferences",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_SeatPreferences", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "TravelPreferences",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PreferredSeat = table.Column<int>(type: "int", nullable: false),
                    PreferredMeal = table.Column<int>(type: "int", nullable: false),
                    PreferredAirline = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TravelPreferences", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TravelPreferences_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_FlightSegments_FlightId",
                table: "FlightSegments",
                column: "FlightId");

            migrationBuilder.CreateIndex(
                name: "IX_TravelPreferences_UserId",
                table: "TravelPreferences",
                column: "UserId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AirlinePreferences");

            migrationBuilder.DropTable(
                name: "Cities");

            migrationBuilder.DropTable(
                name: "FlightSegments");

            migrationBuilder.DropTable(
                name: "MealPreferences");

            migrationBuilder.DropTable(
                name: "SeatPreferences");

            migrationBuilder.DropTable(
                name: "TravelPreferences");

            migrationBuilder.DropColumn(
                name: "PurchaseDate",
                table: "Flights");

            migrationBuilder.DropColumn(
                name: "UserId",
                table: "Flights");

            migrationBuilder.RenameColumn(
                name: "TicketsPurchased",
                table: "Flights",
                newName: "AvailableSeats");

            migrationBuilder.AlterColumn<DateTime>(
                name: "DepartureDate",
                table: "Flights",
                type: "datetime2",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<DateTime>(
                name: "ArrivalDate",
                table: "Flights",
                type: "datetime2",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddColumn<decimal>(
                name: "Price",
                table: "Flights",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m);
        }
    }
}
