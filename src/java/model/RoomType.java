/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.math.BigDecimal;

/**
 *
 * @author Han
 */
public class RoomType {
    private String roomTypeID;
    private String roomTypeName;
    private BigDecimal area; // diện tích
    private BigDecimal price;
    private String roomTypeImg;
    private String hotelID; 
    private int adults;
    private int children;
    
    public RoomType(){
        
    }

    public RoomType(String roomTypeID, String roomTypeName, BigDecimal area, BigDecimal price, String roomTypeImg, String hotelID, int adults, int children) {
        this.roomTypeID = roomTypeID;
        this.roomTypeName = roomTypeName;
        this.area = area;
        this.price = price;
        this.roomTypeImg = roomTypeImg;
        this.hotelID = hotelID;
        this.adults = adults;
        this.children = children;
    }

    public String getRoomTypeID() {
        return roomTypeID;
    }

    public void setRoomTypeID(String roomTypeID) {
        this.roomTypeID = roomTypeID;
    }

    public String getRoomTypeName() {
        return roomTypeName;
    }

    public void setRoomTypeName(String roomTypeName) {
        this.roomTypeName = roomTypeName;
    }

    public BigDecimal getArea() {
        return area;
    }

    public void setArea(BigDecimal area) {
        this.area = area;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getRoomTypeImg() {
        return roomTypeImg;
    }

    public void setRoomTypeImg(String roomTypeImg) {
        this.roomTypeImg = roomTypeImg;
    }

    public String getHotelID() {
        return hotelID;
    }

    public void setHotelID(String hotelID) {
        this.hotelID = hotelID;
    }

    public int getAdults() {
        return adults;
    }

    public void setAdults(int adults) {
        this.adults = adults;
    }

    public int getChildren() {
        return children;
    }

    public void setChildren(int children) {
        this.children = children;
    }

    @Override
    public String toString() {
        return "RoomType{" + "roomTypeID=" + roomTypeID + ", roomTypeName=" + roomTypeName + ", area=" + area + ", price=" + price + ", roomTypeImg=" + roomTypeImg + ", hotelID=" + hotelID + ", adults=" + adults + ", children=" + children + '}';
    }
    
}