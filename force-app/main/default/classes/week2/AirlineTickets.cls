public with sharing class AirlineTickets {

public String departure;
public String arrival;
public integer flightNumber;
public String seatNumber;


    public void printTicket() {
    system.debug('This is ticket is for the journey from '+ departure+ ' to '+ arrival);

    }
}
