/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.CallableStatement;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import model.Customer;
import model.Room;
import model.RoomType;

/**
 *
 * @author Han
 */
public class RoomDB extends DBContext {
    
    public List<Room> getRoomByRoomType(String roomTypeID) {
    List<Room> listRoom = new ArrayList<>();
    
    String sql = "SELECT Room.RoomNumber, Room.RoomID "
            + "FROM Room "
            + "JOIN RoomType ON Room.RoomTypeID = RoomType.RoomTypeID "
            + "WHERE RoomType.RoomTypeID = ? AND Room.State = 0";
    
    try {
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setString(1, roomTypeID);
        ResultSet rs = stm.executeQuery();

        while (rs.next()) {
            String roomID = rs.getString("RoomID");
            int roomNumber = rs.getInt("RoomNumber");
            
            listRoom.add(new Room(roomID, null, 0, roomNumber, null, null));
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }

    return listRoom;
}


    public void updateRoomState(String roomID, int state) {
        String sql = "UPDATE Room SET State = ? WHERE RoomID = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, state);
            stm.setString(2, roomID);
            stm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public Room findRoomByID(String roomID) {
        String sql = "SELECT * FROM Room1 WHERE RoomID = ?";
        Room room = null;
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, roomID);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                room = new Room(); // Khởi tạo đối tượng Room

                room.setRoomID(rs.getString("RoomID"));
                room.setRoomTypeID("RoomTypeID");
                room.setState(rs.getInt("State")); // Sử dụng getBoolean vì State là kiểu BIT
                room.setRoomNumber(rs.getInt("RoomNumber"));
                room.setRoomImage(rs.getString("RoomImg"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return room;
    }

    

    public static void main(String[] args) {
        RoomDB rDB = new RoomDB();
        List<Room> r = rDB.getRoomByRoomType("RT001");
        for (Room rs : r) {
            System.out.println(rs);
        }
     ;
    }
}
