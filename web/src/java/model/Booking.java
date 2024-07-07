/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Han
 */

//BOOKINGDETAIL

public class Booking {
    private String bookingID;
    private String customerID;
    private String roomTypeID;
    private int numberOfRoom;
    private Date dateIn;
    private Date dateOut;

    public Booking(){
    }
  
    
    public Booking(String bookingID, String customerID, String roomTypeID, int numberOfRoom, Date dateIn, Date dateOut) {
        this.bookingID = bookingID;
        this.customerID = customerID;
        this.roomTypeID = roomTypeID;
        this.numberOfRoom = numberOfRoom;
        this.dateIn = dateIn;
        this.dateOut = dateOut;
    }

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getRoomTypeID() {
        return roomTypeID;
    }

    public void setRoomTypeID(String roomTypeID) {
        this.roomTypeID = roomTypeID;
    }

    public int getNumberOfRoom() {
        return numberOfRoom;
    }

    public void setNumberOfRoom(int numberOfRoom) {
        this.numberOfRoom = numberOfRoom;
    }

    public Date getDateIn() {
        return dateIn;
    }

    public void setDateIn(Date dateIn) {
        this.dateIn = dateIn;
    }

    public Date getDateOut() {
        return dateOut;
    }

    public void setDateOut(Date dateOut) {
        this.dateOut = dateOut;
    }

    @Override
    public String toString() {
        return "Booking{" + "bookingID=" + bookingID + ", customerID=" + customerID + ", roomTypeID=" + roomTypeID + ", numberOfRoom=" + numberOfRoom + ", dateIn=" + dateIn + ", dateOut=" + dateOut + '}';
    }

    
   
    
}
