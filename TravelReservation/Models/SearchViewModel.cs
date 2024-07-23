using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace TravelReservation.Models
{
    public class SearchViewModel
    {
        [Required(ErrorMessage = "El campo de origen es obligatorio.")]
        [Display(Name = "Origen")]
        public string Origin { get; set; } = string.Empty;

        [Required(ErrorMessage = "El campo de destino es obligatorio.")]
        [Display(Name = "Destino")]
        public string Destination { get; set; } = string.Empty;

        [Required(ErrorMessage = "El campo de fecha de salida es obligatorio.")]
        [Display(Name = "Fecha de Salida")]
        public DateTime DepartureDate { get; set; }

        [Required(ErrorMessage = "El campo de cantidad de pasajeros es obligatorio.")]
        [Display(Name = "Cantidad de Pasajeros")]
        [Range(1, 10, ErrorMessage = "El número de pasajeros debe estar entre 1 y 10.")]
        public int Adults { get; set; } = 1;

        public string OriginCode { get; set; } = string.Empty;
        public string DestinationCode { get; set; } = string.Empty;

        public List<Flight> Results { get; set; } = new List<Flight>();
    }
}
