/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BookingDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
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

/**
 *
 * @author Han
 */
@WebServlet(name = "checkOut", urlPatterns = {"/checkOut"})
public class checkOut extends HttpServlet {

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
            out.println("<title>Servlet checkOut</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkOut at " + request.getContextPath() + "</h1>");
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

        HttpSession session = request.getSession();

        String booking = (String) session.getAttribute("BookingID");
        String hotelId = (String) session.getAttribute("hotelID");

        BookingDAO bDB = new BookingDAO();
        Booking b = bDB.checkBookingExist(booking, hotelId);
        request.setAttribute("bookInfo", b);

        OrderDAO oDB = new OrderDAO();
        Order o = oDB.getOrderByBookingID(booking);
        List<Order> olist = oDB.getOrderDetailByID(o.getOrderID());
        request.setAttribute("odList", olist);

        request.getRequestDispatcher("checkOut.jsp").forward(request, response);

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // Biến lưu trữ tổng bill
   

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    String roomID = request.getParameter("roomID");
    String dateIn = request.getParameter("dateIn");
    String dateOut = request.getParameter("dateOut");
    BigDecimal price = new BigDecimal(request.getParameter("price"));
    HttpSession session = request.getSession();
    try {
        // Tính tổng bill mới từ thông tin của khách hàng hiện tại
        Float newTotal = calculateTotalBill(price, dateIn, dateOut);
        
        // Lấy tổng bill hiện tại từ session
        Float currentTotal = (Float) session.getAttribute("total");
        
        // Nếu tổng bill hiện tại không null, thì cộng dồn với tổng bill mới
        if (currentTotal != null) {
            newTotal += currentTotal;
        }
        
        // Cập nhật tổng bill mới vào session
        session.setAttribute("total", newTotal);
        
        // Chuyển hướng đến trang checkOut.jsp để hiển thị thông tin mới
        request.getRequestDispatcher("checkOut.jsp").forward(request, response);
       
    } catch (ParseException ex) {
        Logger.getLogger(checkOut.class.getName()).log(Level.SEVERE, null, ex);
    }
}


    public float calculateTotalBill(BigDecimal price, String dateIn, String dateOut) throws ParseException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = dateFormat.parse(dateIn);
        Date endDate = dateFormat.parse(dateOut);

        long differenceInMillis = endDate.getTime() - startDate.getTime();
        long differenceInDays = differenceInMillis / (1000 * 60 * 60 * 24);

        BigDecimal totalBill = price.multiply(BigDecimal.valueOf(differenceInDays));
        return totalBill.floatValue();
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
