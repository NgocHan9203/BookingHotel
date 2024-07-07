/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BookingDAO;
import dal.OrderDAO;
import dal.RoomDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Booking;
import model.Order;
import model.Room;

/**
 *
 * @author Han
 */
@WebServlet(name = "checkIn2", urlPatterns = {"/checkIn2"})
public class checkIn2 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet checkIn2</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkIn2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RoomDB rDB = new RoomDB();
        String roomTypeID = request.getParameter("roomTypeID");
        List<Room> roomList = rDB.getRoomByRoomType(roomTypeID);
        request.setAttribute("availableRooms", roomList);

        request.getRequestDispatcher("Input_Cus_CheckIn.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RoomDB rDB = new RoomDB();
        String roomID = request.getParameter("roomID");
        rDB.updateRoomState(roomID, 1);
        HttpSession session = request.getSession();
        String booking = (String) session.getAttribute("BookingID");
        OrderDAO oDB = new OrderDAO();
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String idCard = request.getParameter("id_card");
        String phone = request.getParameter("phone");
        String dateInStr = request.getParameter("dateIn");
        String dateOutStr = request.getParameter("dateOut");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Điều này tương ứng với định dạng ngày tháng "yyyy-MM-dd"

        try {
            Date dateIn = sdf.parse(dateInStr);
            Date dateOut = sdf.parse(dateOutStr);
            Order newO = new Order(booking, null, dateIn, dateOut, name, age, idCard, phone,roomID);
            oDB.updateOrder(newO);
        } catch (ParseException e) {
        }

        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
