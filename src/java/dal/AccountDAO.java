/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;

import model.Customer;

/**
 *
 * @author Văn Phú
 */
public class AccountDAO extends DBContext {

    public Customer findCusByUserName(String userID){
//        userName chính là customerID
        Customer cus=new Customer();
        String sql = "SELECT * FROM Customer\n"
                + "WHERE CustomerID = ? ;";
         try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setObject(1, userID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String username = rs.getString("CustomerID").trim();
            String cusName = rs.getString("CusName").trim();
            String cusGender = rs.getString("Gender").trim();
            String cusPhone = rs.getString("Phone").trim();
            String cusIdCard = rs.getString("IDcard").trim();
            String cusEmail = rs.getString("Email").trim();
            String cusPass = rs.getString("Password").trim();
            Date cusDob = rs.getDate("BirthDay");
                
            cus = new Customer(username, cusName, cusGender,cusPhone,cusIdCard,cusEmail,cusPass,cusDob);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }    
         return cus;
    }

    public  Customer addCustomer(Customer cus) {
        String sql = "INSERT INTO Customer(CustomerID, CusName, Gender, Phone, IDcard, Email, Password, BirthDay) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, cus.getUserName());
            stm.setString(2, cus.getCusName());
            stm.setString(3, cus.getCusGender());
            stm.setString(4, cus.getCusPhone());
            stm.setString(5, cus.getCusIdCard());
            stm.setString(6, cus.getCusEmail());
            stm.setString(7, cus.getCusPass());
            stm.setDate(8,convertStringToDate(cus.getCusDob())) ;
            
            int rs = stm.executeUpdate();
            if (rs <= 0) {
                throw new RuntimeException("Insert fail...");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return cus; // Trả về đối tượng Customer đã thêm
    }
    
    private java.sql.Date convertStringToDate(String dateString) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            java.util.Date date = sdf.parse(dateString);
            return new java.sql.Date(date.getTime());
        } catch (ParseException ex) {
            System.out.println(ex);
            return null;
        }
    }


    public static void main(String[] args) {
        AccountDAO dao= new AccountDAO();
        Customer cus= dao.findCusByUserName("C001");
        System.out.println(cus);
//
//
//        // Tạo đối tượng Customer và gọi phương thức addCustomer
//        Customer cus1 = dao.addCustomer(new Customer("CUS002", "John", "FeMale", "1234567890", "1234", "john@example.com", "123", "1/1/2000"));
//        System.out.println(cus1);
    }
}
