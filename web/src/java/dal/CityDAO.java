///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package dal;
//
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;
//import model.City;
//
///**
// * cid varchar(50), cname nvarchar(50)
// *
// * @author Linh
// */
//public class CityDAO extends DBContext {
//   
//
//    public List<City> findAll() {
//        ArrayList<City> list = new ArrayList<>();
//
//        try {
//            String sql = "select * from City";
//
//            PreparedStatement st = connection.prepareStatement(sql);
//
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//
//                String cid = rs.getString(1);
//                String cname = rs.getString(2);
//
//                City c = new City(cid, cname);
//                list.add(c);
//            }
//
//        } catch (SQLException e) {
//            System.out.print(e);
//        }
//
//        return list;
//
//    }
//
//    public static void main(String[] args) {
//        CityDAO c = new CityDAO();
//        List<City> listCity = c.findAll();
//
//        if (listCity == null) {
//            System.out.println("null");
//        } else {
//            for (City ct : listCity) {
//            System.out.println(ct);
//            }
//        }
//    }
//}
