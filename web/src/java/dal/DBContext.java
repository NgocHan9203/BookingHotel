/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
//import org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory;

/**
 *
 * @author Văn Phú
 */
public class DBContext {
    protected Connection connection;
    
    public DBContext(){
        try {
            String user="demo";
            String password = "12345";
            String url="jdbc:sqlserver://localhost:1433;databaseName=BookingHotel";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
}
