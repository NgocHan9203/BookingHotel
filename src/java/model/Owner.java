/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author Han
 */
public class Owner {
    
   private String ownerID;
    private String customerID;
public Owner(){
    
}
    public Owner(String ownerID, String customerID) {
        this.ownerID = ownerID;
        this.customerID = customerID;
    }

    public String getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(String ownerID) {
        this.ownerID = ownerID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    @Override
    public String toString() {
        return "Owner{" + "ownerID=" + ownerID + ", customerID=" + customerID + '}';
    }
    
    
   
}