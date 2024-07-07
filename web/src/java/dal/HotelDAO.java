/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;


import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Hotel;
import model.RoomType;

/**
 * hotelID VARCHAR(50), hotelName NVARCHAR(100), anh VARCHAR(200), address
 * VARCHAR(200), city NVARCHAR(50), introduction NVARCHAR(500)
 *
 * @author Linh
 */
public class HotelDAO extends DBContext {

    public List<Hotel> findAll() {
        ArrayList<Hotel> listHotel = new ArrayList<>();

        try {
            String sql = "select * from Hotel";

            PreparedStatement st = connection.prepareStatement(sql);

            ResultSet rs = st.executeQuery();
            while (rs.next()) {

                String hotelid = rs.getString("HotelID");
                String hotelname = rs.getString("HotelName");
                String anh = rs.getString("HotelImg");
                String hoteladdress = rs.getString("HotelAddress");
                String city = rs.getString("HotelCity");
                String introduction = rs.getString("Description");
                String ownerID= rs.getString("OwnerID");
                Hotel ht = new Hotel(hotelid, hotelname, anh, hoteladdress, city, introduction, ownerID);
                listHotel.add(ht);
            }

        } catch (SQLException e) {
            System.out.print(e);
        }

        return listHotel;

    }
   
    //-----------------------------------------------------------------------------------
    public List<Hotel> getHotelByOwnerID(String ownerID) {
        ArrayList<Hotel> listHotel = new ArrayList<>();
        
        try{
          String sql ="select * from Hotel where OwnerID = ?;";
          PreparedStatement st = connection.prepareStatement(sql);
               st.setObject(1,ownerID );
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Hotel hotel = new Hotel(
                        rs.getString("HotelID"),
                        rs.getString("HotelName"),
                        rs.getString("HotelImg"),
                        rs.getString("HotelAddress"),
                        rs.getString("HotelCity"),
                        rs.getString("Description"),
                        rs.getString("OwnerID"));
                listHotel.add(hotel);
            }

        } catch (SQLException e) {
            System.out.print(e);
        }

        
        return listHotel;
        }
    //-----------------------------------------------------------------------------------

    public Hotel getHotelByID(String hotelID){
        Hotel hotel= new Hotel();
        String sql= "select * from Hotel where HotelID= ?";
        try{
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1,hotelID);
            
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                hotel.setHotelID(rs.getString("HotelID"));
                hotel.setHotelName(rs.getString("HotelName"));
                hotel.setOwnerID(rs.getString("OwnerID"));
                hotel.setHotelAddress(rs.getString("HotelAddress"));
                hotel.setIntroduction(rs.getString("Description"));
                hotel.setCity(rs.getString("HotelCity"));
                hotel.setHotelimg(rs.getString("HotelImg"));
            }
        }catch(Exception e){
            
        }
        return hotel;
    }
    //-----------------------------------------------------------------------------------
    public void insertHotel(String hotelName, String img, String address, String city, String introduction, String ownerID) {
    String sql = "INSERT INTO Hotel (hotelName, OwnerID, HotelAddress, [Description], HotelImg,HotelCity) VALUES (?, ?, ?, ?, ?,?)";
    try {
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setString(1, hotelName);
        stm.setString(2, ownerID);
        stm.setString(3, address);
        stm.setString(4, introduction);
        stm.setString(5, img);
        stm.setString(6, city);
        stm.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    }
    
    public void deleteHotelByID(String hotelID){
        String sql = "DELETE\n"
                + "FROM Hotel WHERE HotelID= ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, hotelID);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
//    --------------------------------------------------------------------------------
    public void updateHotel(String hotelID, String hotelName, String address, String city, String introduction) {
    String sql = "UPDATE hotel SET HotelName = ?, HotelAddress = ?, HotelCity = ?, Description = ? WHERE HotelID = ?";
    try {
        PreparedStatement stm = connection.prepareStatement(sql);

        stm.setString(1, hotelName);

        stm.setString(2, address);
        stm.setString(3, city);
        stm.setString(4, introduction);
        stm.setString(5, hotelID); // Lưu ý rằng hotelID ở đây là tham số cuối cùng
        stm.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
    
    
    public List<Hotel> searchByCity(String city, String dateIn, String dateOut, int children, int adults) {
    ArrayList<Hotel> listHotel = new ArrayList<>();

    try {
        // Câu truy vấn SQL để lấy danh sách khách sạn phù hợp
        String sql = "SELECT DISTINCT Hotel.OwnerID, Hotel.HotelID, Hotel.HotelName, Hotel.HotelImg, Hotel.HotelAddress\n"
                + "FROM Hotel\n"
                + "WHERE Hotel.HotelCity = ?\n"
                + "AND NOT EXISTS (\n"
                + "    SELECT *\n"
                + "    FROM BookingDetail\n"
                + "    JOIN RoomType ON BookingDetail.RoomTypeID = RoomType.RoomTypeID\n"
                + "    WHERE RoomType.HotelID = Hotel.HotelID\n"
                + "    AND BookingDetail.DateIn <= ?\n"
                + "    AND BookingDetail.DateOut >= ?\n"
                + ")\n"
                + "AND EXISTS (\n"
                + "    SELECT *\n"
                + "    FROM RoomType\n"
                + "    WHERE RoomType.HotelID = Hotel.HotelID\n"
                + "    AND RoomType.Children >= ?\n"
                + "    AND RoomType.Adults >= ?\n"
                + ")";
        PreparedStatement st = connection.prepareStatement(sql);
        st.setString(1, city);
        st.setString(2, dateIn);
        st.setString(3, dateOut);
        st.setInt(4, children);
        st.setInt(5, adults);

        ResultSet rs = st.executeQuery();

        while (rs.next()) {
            String hotelID = rs.getString("HotelID");
            String hotelName = rs.getString("HotelName");
            String img = rs.getString("HotelImg");
            String hotelAddress = rs.getString("HotelAddress");
            String hotelCity= rs.getString("HotelCity");
            String intro= rs.getString("Description");
            String ownerID= rs.getString("OwnerID");
            
            Hotel ht = new Hotel(hotelID,hotelName , img, hotelAddress, hotelCity, intro, null);
            listHotel.add(ht);
        }
    } catch (SQLException e) {
        System.out.print(e);
    }

    return listHotel;
}


    //-----------------------------------------------------------------------------------
    public List<RoomType> findAllRoomType(String hotelID) {
        ArrayList<RoomType> listRoom = new ArrayList<>();

        try {
            String sql = "SELECT * FROM RoomType WHERE HotelID = ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelID); // Set giá trị cho tham số hotelID
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String roomTypeID = rs.getString(1);
                String roomTypeName = rs.getString(2);
                BigDecimal area = rs.getBigDecimal(3);
                BigDecimal price = rs.getBigDecimal(4);
                //String hotelID = rs.getString(5);
                String roomTypeImg = rs.getString(6);
                int children = rs.getInt(7);
                int adults = rs.getInt(8);

                RoomType rt = new RoomType(roomTypeID,roomTypeName,area,price,roomTypeImg,hotelID,adults,children);
                listRoom.add(rt);
            }

        } catch (SQLException e) {
            System.out.print(e);
        }

        return listRoom;
    }
//    -----------------------------------------------------------------------------------
    public static void main(String[] args) {
        HotelDAO c = new HotelDAO();
//        List<Hotel> listHotel = c.searchByCity("Hà Nội", "2024-04-10", "2024-04-15", 1, 2);
//
//        if (listHotel == null) {
//            System.out.println("No hotels found.");
//        } else {
//            for (Hotel hotel : listHotel) {
//                System.out.println(hotel);
//            }
//        }

 List<Hotel> listHotel = c.searchByCity("Hà nội", "2024-3-21", "2024-3-22", 1, 2);
//        c.deleteHotelByID("H001");
//        System.out.println(c.getHotelByID("H001"));
        if (listHotel == null) {
            System.out.println("No hotels found.");
        } else {
            for (Hotel hotel : listHotel) {
                System.out.println(hotel);
            }
        }
    }

}
