package controller;

import dal.HotelDAO;
import dal.OwnerDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Customer;
import model.Hotel;
import model.Owner;

public class CheckOwner extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
//        HttpSession session = request.getSession();
//        Customer user = (Customer) session.getAttribute("user");
//
//        // Lấy ownerID từ form
//        String ownerID = request.getParameter("owner");
//        OwnerDAO oDAO = new OwnerDAO();
//        Owner o = oDAO.getOwnerByCusID(user.getUserName());
//
//        if (ownerID != null && o.getOwnerID().equals(ownerID)) {
//
//            response.sendRedirect("hotelmanage"); // Chuyển hướng đến HotelManage Servlet
//        } else {
//            response.sendRedirect("login"); // Chuyển hướng đến trang đăng nhập
//        }
//
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("user");
        if(user==null ){
            response.sendRedirect("login");
        }
        else{
        // Lấy ownerID từ form
        String ownerID = request.getParameter("owner");
        OwnerDAO oDAO = new OwnerDAO();
        Owner o = oDAO.getOwnerByCusID(user.getUserName());

        if (ownerID != null && o != null && o.getOwnerID().equals(ownerID)) {
            HotelDAO hDB= new HotelDAO();
            List<Hotel> hList= hDB.getHotelByOwnerID(ownerID);
            request.setAttribute("listHotel", hList);
            request.getRequestDispatcher("/hotelManagement.jsp").forward(request, response);
//            response.sendRedirect("hotelmanage"); // Chuyển hướng đến HotelManage Servlet
        } else {
//            response.sendRedirect("login"); // Chuyển hướng đến trang đăng nhập
            request.setAttribute("mess", "Bạn chưa có mã Owner, hãy đăng ký khách sạn.");
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet that checks if the logged-in user's ownerID matches the input from the form.";
    }
}
