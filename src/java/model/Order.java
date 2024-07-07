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
public class Order {

    private String orderID;
    private String bookingID;
    private String ServiceID;
    private Date dateIn;
    private Date dateOut;
    //    thong tin thek ở
    private String userRoomName;
    private int userRoomAge;
    private String userRoomID;  
    private String userRoomPhone;
    private String roomID;
    public Order() {

    }

    public Order( String bookingID, String ServiceID, Date dateIn, Date dateOut, String userRoomName, int userRoomAge, String userRoomID, String userRoomPhone,String roomID) {
        
        this.bookingID = bookingID;
        this.ServiceID = ServiceID;
        this.dateIn = dateIn;
        this.dateOut = dateOut;
        this.userRoomName = userRoomName;
        this.userRoomAge = userRoomAge;
        this.userRoomID = userRoomID;
        this.userRoomPhone = userRoomPhone;
        this.roomID= roomID;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getServiceID() {
        return ServiceID;
    }

    public void setServiceID(String ServiceID) {
        this.ServiceID = ServiceID;
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

    public String getUserRoomName() {
        return userRoomName;
    }

    public void setUserRoomName(String userRoomName) {
        this.userRoomName = userRoomName;
    }

    public int getUserRoomAge() {
        return userRoomAge;
    }

    public void setUserRoomAge(int userRoomAge) {
        this.userRoomAge = userRoomAge;
    }

    public String getUserRoomID() {
        return userRoomID;
    }

    public void setUserRoomID(String userRoomID) {
        this.userRoomID = userRoomID;
    }

    public String getUserRoomPhone() {
        return userRoomPhone;
    }

    public void setUserRoomPhone(String userRoomPhone) {
        this.userRoomPhone = userRoomPhone;
    }

    public String getRoomID() {
        return roomID;
    }

    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    @Override
    public String toString() {
        return "Order{" + "orderID=" + orderID + ", bookingID=" + bookingID + ", ServiceID=" + ServiceID + ", dateIn=" + dateIn + ", dateOut=" + dateOut + ", userRoomName=" + userRoomName + ", userRoomAge=" + userRoomAge + ", userRoomID=" + userRoomID + ", userRoomPhone=" + userRoomPhone + ", roomID=" + roomID + '}';
    }

   

}
