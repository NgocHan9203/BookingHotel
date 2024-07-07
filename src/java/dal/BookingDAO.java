/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Booking;

/**
 *
 * @author Han
 */
public class BookingDAO extends DBContext {

    public Booking checkBookingExist(String bookingID, String hotelID) {
       String sql = "SELECT *\n"
        + "FROM Booking B\n"
        + "JOIN BookingDetail BD ON B.BookingID = BD.BookingID\n"
        + "JOIN RoomType RT ON BD.RoomTypeID = RT.RoomTypeID\n"
        + "JOIN Hotel H ON RT.HotelID = H.HotelID\n"
        + "WHERE H.HotelID = ? AND B.BookingID = ?";


        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, hotelID);
            stm.setString(2, bookingID);
            
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Booking b = new Booking();
                b.setBookingID(rs.getString("BookingID"));
                b.setCustomerID(rs.getString("CustomerID"));
//                b.setRoomTypeID(rs.getString("RoomTypeID"));
//                b.setNumberOfRoom(rs.getInt("NumberOfRoom"));
//                b.setDateIn(rs.getDate("Date_in"));
//                b.setDateOut(rs.getDate("Date_out"));
                return b;
            } else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null; // Trả về null nếu có lỗi xảy ra
        }
    }

    public List<Booking> getListBookingDetailByID(String bookingID) {
        List<Booking> bookList = new ArrayList<>();
        String sql = "SELECT \n"
                + "    B.BookingID,\n"
                + "    B.CustomerID,\n"
                + "    RT.RoomTypeID, \n"
                + "    BD.NumberOfRoom,\n"
                + "    BD.DateIn, \n"
                + "    BD.DateOut \n"
                + "FROM \n"
                + "    Booking B\n"
                + "INNER JOIN \n"
                + "    BookingDetail BD ON B.BookingID = BD.BookingID\n"
                + "INNER JOIN \n"
                + "    RoomType RT ON BD.RoomTypeID = RT.RoomTypeID\n"
                + "WHERE B.BookingID= ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, bookingID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Booking b = new Booking(); // Tạo một đối tượng Booking mới cho mỗi kết quả
                b.setBookingID(rs.getString("BookingID"));
                b.setCustomerID(rs.getString("CustomerID"));
                b.setRoomTypeID(rs.getString("RoomTypeID"));
                b.setNumberOfRoom(rs.getInt("NumberOfRoom"));
                b.setDateIn(rs.getDate("DateIn"));
                b.setDateOut(rs.getDate("DateOut"));
                bookList.add(b);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return bookList;
    }

    public static void main(String[] args) {
        BookingDAO b = new BookingDAO();
        Booking o = b.checkBookingExist("100","11");
        List<Booking> bList = b.getListBookingDetailByID(o.getBookingID());
        for (Booking bo : bList) {
            System.out.println(bo);
        }
        System.out.println(o);

    }

}
