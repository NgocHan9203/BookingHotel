/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import dal.HotelDAO;
import dal.OwnerDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Hotel;
import model.Owner;

/**
 *
 * @author Văn Phú
 */
public class EditHotel extends HttpServlet {

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
            out.println("<title>Servlet EditHotel</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditHotel at " + request.getContextPath() + "</h1>");
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
        String hotelID = request.getParameter("hotelId");
        HotelDAO hDB= new HotelDAO();
        Hotel hotel = hDB.getHotelByID(hotelID);

        request.setAttribute("hotel", hotel);
        request.getRequestDispatcher("EditHotel.jsp").forward(request, response);
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
        request.setCharacterEncoding("UTF-8");
        String hotelID = request.getParameter("hotelID");
        String hotelName = request.getParameter("hotelName");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String introduction = request.getParameter("introduction");

        // Lấy ownerID từ session
        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("user");
       OwnerDAO oDB= new OwnerDAO();
       Owner o= oDB.getOwnerByCusID(user.getUserName());
        
        Hotel hotel = new Hotel(hotelID, hotelName, null, address, city, introduction, o.getOwnerID());
        
        HotelDAO hDB= new HotelDAO();
        hDB.updateHotel(hotelID, hotelName, address, city, introduction);
        
        // Chuyển hướng người dùng về trang quản lý khách sạn
        response.sendRedirect("hotelmanage"); // Đảm bảo rằng "hotelmanage" là URL pattern chính xác
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
