public class CartFlight
{
    public List<Segment> Segments { get; set; }
    public int TicketsPurchased { get; set; }
}

public class Segment
{
    public string Origin { get; set; }
    public string Destination { get; set; }
    public string DepartureDate { get; set; }
    public string ArrivalDate { get; set; }
}
