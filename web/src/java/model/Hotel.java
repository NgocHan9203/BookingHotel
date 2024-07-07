/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * hotelID VARCHAR(50),
    hotelName NVARCHAR(100),
    anh VARCHAR(200),
    address VARCHAR(200),
    city NVARCHAR(50),
	introduction NVARCHAR(500)
 * @author Linh
 */
public class Hotel {
    
    private String HotelID;
    private String HotelName;
    private String Hotelimg;
    private String HotelAddress;
    private String city;
    private String introduction;
    private String ownerID;
    
    public Hotel() {
    }

    public Hotel( String hotelID, String HotelName, String Hotelimg, String HotelAddress, String city, String introduction, String OwnerID) {
        this.HotelID= hotelID;
        this.HotelName = HotelName;
        this.Hotelimg = Hotelimg;
        this.HotelAddress = HotelAddress;
        this.city = city;
        this.introduction = introduction;
        this.ownerID=OwnerID;
    }


    public String getHotelID() {
        return HotelID;
    }

    public void setHotelID(String HotelID) {
        this.HotelID = HotelID;
    }

    public String getHotelName() {
        return HotelName;
    }

    public void setHotelName(String HotelName) {
        this.HotelName = HotelName;
    }

    public String getHotelimg() {
        return Hotelimg;
    }

    public void setHotelimg(String Hotelimg) {
        this.Hotelimg = Hotelimg;
    }

    public String getHotelAddress() {
        return HotelAddress;
    }

    public void setHotelAddress(String HotelAddress) {
        this.HotelAddress = HotelAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(String ownerID) {
        this.ownerID = ownerID;
    }

    @Override
    public String toString() {
        return "Hotel{" + "HotelID=" + HotelID + ", HotelName=" + HotelName + ", Hotelimg=" + Hotelimg + ", HotelAddress=" + HotelAddress + ", city=" + city + ", introduction=" + introduction + ", ownerID=" + ownerID + '}';
    }

    


    }

   