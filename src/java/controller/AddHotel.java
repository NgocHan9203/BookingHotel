package controller;

import dal.AccountDAO;
import dal.HotelDAO;
import dal.OwnerDAO;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Customer;
import model.Hotel;
import model.Owner;

@MultipartConfig
public class AddHotel extends HttpServlet {

    private static final int MAX_WIDTH = 400;
    private static final int MAX_HEIGHT = 300;
    private static final String UPLOAD_DIRECTORY = "images"; // Thư mục lưu trữ ảnh

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Customer loggedInUser = (Customer) session.getAttribute("user");

        String hotelname = request.getParameter("hotelName");
        Part filePart = request.getPart("anh"); // 'file' là name của input chứa file trong form
        String fileName = filePart.getSubmittedFileName();
        String applicationPath = request.getServletContext().getRealPath("");
        String uploadPath = applicationPath + File.separator + UPLOAD_DIRECTORY;

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        BufferedImage image = ImageIO.read(filePart.getInputStream());
        BufferedImage scaledImage = scaleImage(image, MAX_WIDTH, MAX_HEIGHT);

        String filePath = uploadPath + File.separator + fileName;
        File outputFile = new File(filePath);
        ImageIO.write(scaledImage, "jpg", outputFile);

        String imagePath = UPLOAD_DIRECTORY + "/" + fileName; // Lưu đường dẫn ảnh vào CSDL

        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String introduction = request.getParameter("introduction");
        
        OwnerDAO oDB = new OwnerDAO();
        Owner o= oDB.getOwnerByCusID(loggedInUser.getUserName());

       HotelDAO hDB= new HotelDAO();
       
        hDB.insertHotel(hotelname, imagePath, address, city, introduction, o.getOwnerID());

        response.sendRedirect("hotelmanage"); // Điều hướng người dùng về trang quản lý hotel
    }

    private BufferedImage scaleImage(BufferedImage originalImage, int targetWidth, int targetHeight) {
        int type = originalImage.getType() == 0? BufferedImage.TYPE_INT_ARGB : originalImage.getType();
        BufferedImage resizedImage = new BufferedImage(targetWidth, targetHeight, type);
        Graphics2D g = resizedImage.createGraphics();
        g.drawImage(originalImage, 0, 0, targetWidth, targetHeight, null);
        g.dispose();

        return resizedImage;
    }
}
// Override getServletInfo nếu cần

