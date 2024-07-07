/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.HotelDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Booking;
import model.Hotel;

/**
 *
 * @author Linh
 */
@WebServlet(name = "searchControl", urlPatterns = {"/searchControl"})
public class searchControl extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet searchControl</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet searchControl at " + request.getContextPath() + "</h1>");
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
   HotelDAO hotelDAO = new HotelDAO();
        String city = request.getParameter("city");
        String dateIn = request.getParameter("checkIn");
        String dateOut = request.getParameter("checkOut");
        int children = parseParameter(request.getParameter("children"));
        int adults = parseParameter(request.getParameter("adults"));
        
        List<Hotel> listHotel = hotelDAO.searchByCity(city, dateIn, dateOut, children, adults);
        request.setAttribute("listHotel", listHotel);
        request.getRequestDispatcher("searchHotelByCity.jsp").forward(request, response);
    }

    private int parseParameter(String parameter) {
        int value = 0;
        if (parameter != null && !parameter.isEmpty()) {
            value = Integer.parseInt(parameter);
        }
        return value;
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
//        HotelDAO a = new HotelDAO();
//        String city = request.getParameter("city");
//        String dateIn = request.getParameter("checkIn");
//        String dateOut = request.getParameter("checkOut");
//        String childrenParam = request.getParameter("children");
//        int children = 0;
//        if (childrenParam != null && !childrenParam.isEmpty()) {
//            children = Integer.parseInt(childrenParam);
//        }
//        String adultsParam = request.getParameter("adults");
//        int adults = 0;
//        if (adultsParam != null && !adultsParam.isEmpty()) {
//            adults = Integer.parseInt(adultsParam);
//        }
//        List<Hotel> listHotel = a.searchByCity(city, dateIn, dateOut, children, adults);
//        request.setAttribute("listHotel", listHotel);
//        request.getRequestDispatcher("searchHotelByCity.jsp").forward(request, response);
        //----------------------------------------
//        request.getRequestDispatcher("searchHotelByCity.jsp").forward(request, response);

//        
//         HotelDAO a = new HotelDAO();
//         BookingInfo newB= a.addBooking((BookingInfo)request.getSession().getAttribute("booking"));
//        String mess= "";
//        if(newB!=null){
//            mess+=""+newB;
//            
//        }
//        else
//            throw new RuntimeException("There are no more rooms available");
//        request.setAttribute("message", mess);
//        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     *
     * HotelDAO a = new HotelDAO(); String city = request.getParameter("city");
     * String dateIn = request.getParameter("dateIn"); String dateOut =
     * request.getParameter("dateOut");
     *
     * // Parsing children parameter String childrenParam =
     * request.getParameter("children"); int children = 0; // Default value if
     * parameter is null or empty if (childrenParam != null &&
     * !childrenParam.isEmpty()) { children = Integer.parseInt(childrenParam); }
     *
     * // Parsing adults parameter String adultsParam =
     * request.getParameter("adults"); int adults = 0; // Default value if
     * parameter is null or empty if (adultsParam != null &&
     * !adultsParam.isEmpty()) { adults = Integer.parseInt(adultsParam); }
     *
     * List<Hotel> listHotel = a.searchByCity(city, dateIn, dateOut, children,
     * adults); request.setAttribute("listH", listHotel);
     * request.getRequestDispatcher("searchHotelByCity.jsp").forward(request,
     * response);
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
