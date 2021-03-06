package Core;

import User.User;
import Web.Client;
import Web.JsonCommand;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/**
 * @author Gruppo N
 */
public class TempTicket {

    private Client client;
    private User user;
    private Date date;
    private Flight flight;
    private Airport departure;
    private Airport arrive;
    private int number;
    private int nEconomy;
    private int nBusiness;
    private String nSeat;
    private ArrayList<Ticket> tickets;

    /**
     *
     * @param client An instance of <code>Client</code> class
     * @param user An instance of current <code>User</code>
     * @param departure The Departure's Airport
     * @param arrive The Arrive's Airport
     */
    public TempTicket(Client client, User user, Airport departure, Airport arrive){
        this.client = client;
        this.user = user;
        this.departure = departure;
        this.arrive = arrive;
        this.number = 0;
        this.nEconomy = 0;
        this.nBusiness = 0;
        this.tickets = new ArrayList<Ticket>();
    }

    /**
     *
     * @return Departure's Airport
     */
    public Airport getDeparture() {
        return departure;
    }

    /**
     *
     * @return Arrive's Airport
     */
    public Airport getArrive() {
        return arrive;
    }

    /**
     *
     * @param number The number of desidered Tickets
     */
    public void setNumber(int number) {
        this.number = number;
    }

    /**
     *
     * @return The number of desidered Tickets
     */
    public int getNumber() {
        return number;
    }

    /**
     *
     * @param flight The Flight that User wants to book
     */
    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    /**
     *
     * @return The IATA code of the Departure Airport
     */
    public String getDepartureIATA(){
        return departure.getIATA();
    }

    /**
     *
     * @return The IATA code of the Arrive Airport
     */
    public String getArriveIATA(){
        return arrive.getIATA();
    }

    /**
     *
     * @return The Flight that User wants to book
     */
    public Flight getFlight() {
        return flight;
    }

    /**
     *
     * @param sDate The date of the Flight that User wants to book
     * @throws ParseException
     */
    public void setDate(String sDate) throws ParseException {
        Date date =new SimpleDateFormat("dd-MM-yyyy").parse(sDate);
        this.date = date;
    }

    /**
     *
     * @return The date of the Flight
     */
    public Date getDate() {
        return date;
    }

    /**
     *
     * @return A string that rapresents the date of the Flight
     */
    public String getDateString(){
        String sDate = new SimpleDateFormat("yyyy-MM-dd").format(this.date);
        return sDate;
    }

    /**
     *
     * @param holder The holder of the current Temporary Ticket
     * @param seatType The Seat Type (Economy or Business) of the current Temporary Ticket
     * @param baggageType The Baggage Type of the current Temporary Ticket
     * @throws org.json.simple.parser.ParseException
     */
    public void addTicket(String holder, String seatType, String baggageType) throws org.json.simple.parser.ParseException {
        String id = createID(seatType);
        Baggage baggage = new Baggage(BaggageType.valueOf(baggageType));
        Seat seat = new Seat(SeatType.valueOf(seatType), nSeat);
        Ticket ticket = new Ticket(id, user, holder, flight, date, baggage, seat);
        tickets.add(ticket);
    }

    /**
     *
     * @return The List of Temporary Tickets
     */
    public ArrayList<Ticket> getTickets() {
        return tickets;
    }

    /**
     *
     * @param seatType The type of the Seat (Economy or Business)
     * @return The ID code of the selected Flight
     * @throws org.json.simple.parser.ParseException
     */
    public String createID(String seatType) throws org.json.simple.parser.ParseException {
        nSeat = new String("");
        JSONParser jsonParser = new JSONParser();
        String s = flight.getId();
        if(seatType.equals("ECONOMY")){
            client.sendMessage(new JsonCommand("07", flight.getId(), getDateString(), "ECONOMY").getJsonString());
            if (client.getResponse().equals("{}")){
                client.sendMessage(new JsonCommand("13", s, getDateString(), flight.getESeat(), flight.getBSeat()).getJsonString());
                client.sendMessage(new JsonCommand("07", flight.getId(), getDateString(), "ECONOMY").getJsonString());
            }
            JSONObject rSeat = (JSONObject) jsonParser.parse(client.getResponse());
            nSeat = "E" + rSeat.get("economy");
            nEconomy++;
            s = s + nSeat;
            client.sendMessage(new JsonCommand("08", flight.getId(), getDateString(),"ECONOMY").getJsonString());
        }
        else if (seatType.equals("BUSINESS")){
            client.sendMessage(new JsonCommand("07", flight.getId(), getDateString(), "BUSINESS").getJsonString());
            if (client.getResponse().equals("{}")){
                client.sendMessage(new JsonCommand("13", s, getDateString(), flight.getESeat(), flight.getBSeat()).getJsonString());
                client.sendMessage(new JsonCommand("07", flight.getId(), getDateString(), "BUSINESS").getJsonString());
            }
            JSONObject rSeat = (JSONObject) jsonParser.parse(client.getResponse());
            nSeat = "B" + rSeat.get("business");
            nBusiness++;
            s = s + nSeat;
            client.sendMessage(new JsonCommand("08", flight.getId(), getDateString(),"BUSINESS").getJsonString());
        }
        s = s + getDateString().substring(0,4) + getDateString().substring(5,7) + getDateString().substring(8,10);
        System.out.println(s);
        return s;
    }

    /**
     *
     * @return Previews of selected Tickets
     */
    public ArrayList<String> getTicketsPreview(){
        ArrayList<String> strings = new ArrayList<String>();
        for (Ticket t: this.tickets) {
            strings.add(t.previewString());
        }
        return strings;
    }

    /**
     * To book the selected tickets
     */
    public void bookTickets(){
        for (Ticket t : tickets) {
            client.sendMessage(new JsonCommand("11", t.getId(), t.getUserName(), t.getHolder(), t.getFlightId(), getDateString(),
                    t.getBaggage(), t.getSeatType(), t.geNSeat()).getJsonString());
            user.addTicket(t);
        }
    }

    /**
     * If User cancels the selected preferences
     */
    public void resetTickets(){
        this.tickets = new ArrayList<Ticket>();
        for (int i = 0; i < nEconomy; i++)
            client.sendMessage(new JsonCommand("09", flight.getId(), getDateString()).getJsonString());
        for (int i = 0; i < nBusiness; i++)
            client.sendMessage(new JsonCommand("10", flight.getId(), getDateString()).getJsonString());
        number -= (nEconomy + nBusiness);
    }

}
