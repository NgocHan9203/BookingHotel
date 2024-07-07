/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Han
 */
public class Room {
    
    private String roomID;
    private String roomTypeID;
    private int state;
    private int roomNumber;
    private String orderDetailID;
    private String roomImage;
    
    public Room() {
    }

    public Room(String roomID, String roomTypeID, int state, int roomNumber, String orderDetailID, String roomImage) {
        this.roomID = roomID;
        this.roomTypeID = roomTypeID;
        this.state = state;
        this.roomNumber = roomNumber;
        this.orderDetailID = orderDetailID;
        this.roomImage = roomImage;
    }

    public String getRoomID() {
        return roomID;
    }

    public void setRoomID(String roomID) {
        this.roomID = roomID;
    }

    public String getRoomTypeID() {
        return roomTypeID;
    }

    public void setRoomTypeID(String roomTypeID) {
        this.roomTypeID = roomTypeID;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getRoomNumber() {
        return roomNumber;
    }

    public void setRoomNumber(int roomNumber) {
        this.roomNumber = roomNumber;
    }

    public String getOrderDetailID() {
        return orderDetailID;
    }

    public void setOrderDetailID(String orderDetailID) {
        this.orderDetailID = orderDetailID;
    }

    public String getRoomImage() {
        return roomImage;
    }

    public void setRoomImage(String roomImage) {
        this.roomImage = roomImage;
    }

    @Override
    public String toString() {
        return "Room{" + "roomID=" + roomID + ", roomTypeID=" + roomTypeID + ", state=" + state + ", roomNumber=" + roomNumber + ", orderDetailID=" + orderDetailID + ", roomImage=" + roomImage + '}';
    }

   
    
    
   
    
    
    
   
}


