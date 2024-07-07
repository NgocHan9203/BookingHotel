/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Owner;

/**
 *
 * @author Han
 */
public class OwnerDAO extends DBContext{
    public Owner getOwnerByCusID(String cusID){
       Owner o =new Owner();
        String sql= "select * from Owner where CustomerID= ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, cusID);
            ResultSet rs = stm.executeQuery();
            
              while (rs.next()) {
              
                o.setOwnerID(rs.getString("OwnerID"));
                o.setCustomerID(cusID);
            } 
        }catch(Exception e){
            
        }
        return o;  
    }
    public static void main(String[] args) {
        OwnerDAO o= new OwnerDAO();
        System.out.println(o.getOwnerByCusID("C002"));
    }
}
