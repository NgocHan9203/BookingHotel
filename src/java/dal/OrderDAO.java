/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;
import model.Order;

public class OrderDAO extends DBContext {

    public Order getOrderByBookingID(String bookingID) {
        Order o = new Order();
        String sql = "select * from [Order] where BookingID= ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, bookingID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {

                o.setOrderID(rs.getString("OrderID"));
                o.setBookingID(bookingID);
                o.setServiceID(rs.getString("ServiceID"));
            }
        } catch (Exception e) {

        }
        return o;
    }

    public List<Order> getOrderDetailByID(String orderID) {
        String sql = "SELECT *\n"
                + "FROM OrderDetail OD\n"
                + "JOIN [Order] O ON OD.OrderID = O.OrderID\n"
                +"JOIN ServiceDetail s on s.OrderID= O.OrderID\n"
                + "WHERE OD.OrderID = ?";
        List<Order> oDetailList = new ArrayList<>();
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, orderID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                order.setOrderID(rs.getString("OrderID"));
                order.setBookingID(rs.getString("BookingID"));
                order.setServiceID(rs.getString("ServiceID"));

                order.setDateIn(rs.getDate("Date_in"));
                order.setDateOut(rs.getDate("Date_out"));

                order.setUserRoomName(rs.getString("UserRoomName"));
                order.setUserRoomAge(rs.getInt("UserRoomAge"));
                order.setUserRoomID(rs.getString("UserRoomIdCard"));
                order.setUserRoomPhone(rs.getString("UserRoomPhone"));
                order.setRoomID(rs.getString("RoomID"));
                oDetailList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return oDetailList;
    }

    public void updateOrder(Order order) {
        try {
            // Lấy OrderID từ BookingID
            String orderIdQuery = "SELECT OrderID FROM [Order] WHERE BookingID = ?";
            PreparedStatement orderIdStatement = connection.prepareStatement(orderIdQuery);
            orderIdStatement.setString(1, order.getBookingID());
            ResultSet orderIdResultSet = orderIdStatement.executeQuery();

            String orderId = null;
            if (orderIdResultSet.next()) {
                orderId = orderIdResultSet.getString("OrderID");
            } else {
                throw new SQLException("No order found for the booking ID: " + order.getBookingID());
            }

            if (orderId != null) {
                // Cập nhật dịch vụ cho bảng Order
                String updateOrderSQL = "UPDATE ServiceDetail SET ServiceID = ? WHERE OrderID = ?";
                PreparedStatement updateOrderStatement = connection.prepareStatement(updateOrderSQL);
                updateOrderStatement.setString(1, order.getServiceID());
                updateOrderStatement.setString(2, orderId);
                updateOrderStatement.executeUpdate();

                // Chèn dữ liệu vào bảng OrderDetail
                String insertOrderDetailSQL = "INSERT INTO OrderDetail (OrderID, Date_in, Date_out, UserRoomName, UserRoomAge, UserRoomIdCard, UserRoomPhone) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement orderDetailStatement = connection.prepareStatement(insertOrderDetailSQL);
                orderDetailStatement.setString(1, orderId); // Sử dụng OrderID từ BookingID
                orderDetailStatement.setDate(2, new java.sql.Date(order.getDateIn().getTime()));
                orderDetailStatement.setDate(3, new java.sql.Date(order.getDateOut().getTime()));
                orderDetailStatement.setString(4, order.getUserRoomName());
                orderDetailStatement.setInt(5, order.getUserRoomAge());
                orderDetailStatement.setString(6, order.getUserRoomID());
                orderDetailStatement.setString(7, order.getUserRoomPhone());
                orderDetailStatement.setString(8, order.getRoomID());
                orderDetailStatement.executeUpdate();
            } else {
                throw new SQLException("Creating order failed, no ID obtained.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        OrderDAO oDB = new OrderDAO();
        Order o = oDB.getOrderByBookingID("100");
        List<Order> olist = oDB.getOrderDetailByID("1");
        for (Order ob : olist) {
            System.out.println(ob);
        }

    }

}
