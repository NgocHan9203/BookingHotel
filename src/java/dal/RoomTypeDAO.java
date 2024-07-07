/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.RoomType;

/**
 *
 * @author Han
 */
public class RoomTypeDAO extends DBContext {

    public RoomType getRoomTypeByRoomID(String roomID) {
        RoomType r = new RoomType();
        String sql = "select *\n"
                + "from Room r\n"
                + "join Roomtype rt on r.RoomTypeID=rt.RoomTypeID\n"
                + "where r.RoomID=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, roomID);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                r.setRoomTypeID(rs.getString("RoomTypeID"));
                r.setRoomTypeName(rs.getString("RoomName"));
                r.setHotelID(rs.getString("HotelID"));
                r.setPrice(rs.getBigDecimal("Price"));
                r.setArea(rs.getBigDecimal("Area"));
                r.setRoomTypeImg(rs.getString("RoomTypeImg"));
            }

        } catch (Exception e) {

        }
        return r;
    }

    public RoomType getRoomTypeByID(String roomTypeID) {
        RoomType r = new RoomType();
        String sql = "select *\n"
                + "from RoomType r\n"
                + "where RoomTypeID=?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, roomTypeID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                r.setRoomTypeID(rs.getString("RoomTypeID"));
                r.setRoomTypeName(rs.getString("RoomName"));
                r.setHotelID(rs.getString("HotelID"));
                r.setPrice(rs.getBigDecimal("Price"));
                r.setArea(rs.getBigDecimal("Area"));
                r.setRoomTypeImg(rs.getString("RoomTypeImg"));
            }
        } catch (Exception e) {

        }
        return r;
    }

    public static void main(String[] args) {
        RoomTypeDAO r = new RoomTypeDAO();
        System.out.println(r.getRoomTypeByRoomID("101"));
        System.out.println(r.getRoomTypeByID("2").getRoomTypeName());

    }
}
