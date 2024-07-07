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
            r.setRoomTypeID(rs.getString("RoomTypeID"));
            r.setHotelID(rs.getString("HotelID"));
            r.setPrice(rs.getBigDecimal("Price"));
            r.setArea(rs.getBigDecimal("Area"));
            r.setRoomTypeImg(rs.getString("RoomTypeImg"));
        }catch(Exception e){
            
        }
        return r; 
    }
}
