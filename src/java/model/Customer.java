/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *
 * @author Han
 */
public class Customer {
    private String userName;
    private String cusName;
    private char cusGender;
    private String cusPhone;
    private String cusIdCard;
    private String cusEmail;
    private String cusPass;
    private Date cusDob;

    public Customer() {
    }

    public Customer(String userName, String cusName, String cusGender, String cusPhone, String cusIdCard, String cusEmail, String cusPass, Date cusDob) {
        this.userName = userName;
        this.cusName = cusName;
        this.cusGender = cusGender.charAt(0);
        this.cusPhone = cusPhone;
        this.cusIdCard = cusIdCard;
        this.cusEmail = cusEmail;
        this.cusPass = cusPass;
        this.cusDob=cusDob;
    }
      public Customer(String userName, String cusName, String cusGender, String cusPhone, String cusIdCard, String cusEmail, String cusPass, String cusDob) {
        this.userName = userName;
        this.cusName = cusName;
        this.cusGender = cusGender.charAt(0);
        this.cusPhone = cusPhone;
        this.cusIdCard = cusIdCard;
        this.cusEmail = cusEmail;
        this.cusPass = cusPass;
        setCusDob(cusDob); // Gọi setCusDob để chuyển đổi String thành Date
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String cusId) {
        this.userName = cusId;
    }

    public String getCusName() {
        return cusName;
    }

    public void setCusName(String cusName) {
        this.cusName = cusName;
    }

    public String getCusGender() {
        switch(cusGender){
            case 'M':return "Male"; 
            case 'F':return "Female"; 
            default: return "Others";
        }
        
    }

    public void setCusGender(char cusGender) {
        
        this.cusGender = cusGender;
    }

    public String getCusPhone() {
        return cusPhone;
    }

    public void setCusPhone(String cusPhone) {
        // Kiểm tra xem số điện thoại có đúng định dạng không
        if (cusPhone.matches("[0-9]{10}")) { // Kiểm tra xem có 10 chữ số không
            this.cusPhone = cusPhone;
        } else {
            System.out.println("Số điện thoại không hợp lệ. Vui lòng nhập lại.");
        // Có thể thực hiện xử lý khác như throw exception hoặc thông báo lỗi tùy thuộc vào yêu cầu của bạn
        }
        
    }

    public String getCusIdCard() {
        return cusIdCard;
    }

    public void setCusIdCard(String cusIdCard) {
        if(!cusIdCard.equals(this.cusIdCard))
            this.cusIdCard = cusIdCard;
        else System.out.println("Đã tồn tại");
    }

    public String getCusEmail() {
        return cusEmail;
    }

    public void setCusEmail(String cusEmail) {
        if(!cusEmail.equals(this.cusEmail))
            this.cusEmail = cusEmail;
        else System.out.println("Đã tồn tại");
    }

    public String getCusPass() {
        return cusPass;
    }

    public void setCusPass(String cusPass) {
        this.cusPass = cusPass;
    }
    
     public void setCusDob(String cusDob) {
        try {
            SimpleDateFormat sdfInput = new SimpleDateFormat("yyyy-MM-dd");
            SimpleDateFormat sdfOutput = new SimpleDateFormat("dd/MM/yyyy");
            java.util.Date date = sdfInput.parse(cusDob);
            this.cusDob = new java.sql.Date(date.getTime());
        } catch (ParseException ex) {
            System.out.println(ex);
        }
    }

    public String getCusDob() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        if (cusDob != null) {
            return sdf.format(cusDob);
        }
        return null;
    }
    
   

     public Customer login(String userName, String inputMatKhau) {
        if(userName.equals(this.userName) && cusPass.equals(inputMatKhau)) return this;
        return null;
    }
    @Override
    public String toString() {
        return "Customer{" + "userName=" + userName + ", cusName=" + cusName + ", cusGender=" + cusGender + ", cusPhone=" + cusPhone + ", cusIdCard=" + cusIdCard + ", cusEmail=" + cusEmail + ", cusPass=" + cusPass + ", cusDob=" + cusDob + '}';
    }
    
}
