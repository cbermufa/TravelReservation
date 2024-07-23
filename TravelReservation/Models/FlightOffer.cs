using System;
using System.Collections.Generic;

namespace TravelReservation.Models
{
    public class FlightOffer
    {
        public string Type { get; set; } = string.Empty;
        public string Id { get; set; } = string.Empty;
        public string Source { get; set; } = string.Empty;
        public bool NonStop { get; set; }
        public Price Price { get; set; } = new Price();
        public int AvailableSeats { get; set; }
        public List<Itinerary> Itineraries { get; set; } = new List<Itinerary>();
    }

    public class Price
    {
        public string Currency { get; set; } = string.Empty;
        public string Total { get; set; } = string.Empty;
    }

    public class Itinerary
    {
        public string Duration { get; set; } = string.Empty;
        public List<Segment> Segments { get; set; } = new List<Segment>();
    }

    public class Segment
    {
        public string Departure { get; set; } = string.Empty;
        public string Arrival { get; set; } = string.Empty;
        public string CarrierCode { get; set; } = string.Empty;
        public string Number { get; set; } = string.Empty;
        public Aircraft Aircraft { get; set; } = new Aircraft();
        public Operating Operating { get; set; } = new Operating();
        public string Duration { get; set; } = string.Empty;
    }

    public class Aircraft
    {
        public string Code { get; set; } = string.Empty;
    }

    public class Operating
    {
        public string CarrierCode { get; set; } = string.Empty;
    }
}
