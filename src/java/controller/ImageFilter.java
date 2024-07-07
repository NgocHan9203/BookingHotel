package controller;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
public class ImageFilter implements Filter {
    private FilterConfig filterConfig = null;
    private int MAX_WIDTH = 400;
    private int MAX_HEIGHT = 300;
    private String uploadFolder = "images";

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        this.MAX_WIDTH = Integer.parseInt(filterConfig.getInitParameter("MAX_WIDTH"));
        this.MAX_HEIGHT = Integer.parseInt(filterConfig.getInitParameter("MAX_HEIGHT"));

        if (httpRequest.getContentType() != null && httpRequest.getContentType().startsWith("multipart/form-data")) {
            String applicationPath = request.getServletContext().getRealPath("");
            String uploadFilePath = applicationPath + File.separator + uploadFolder;
            File fileSaveDir = new File(uploadFilePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdirs();
            }
            Part filePart = httpRequest.getPart("file");
            String fileName = extractFileName(filePart);
            BufferedImage image = ImageIO.read(filePart.getInputStream());
            if (image != null) {
                int scaledWidth = image.getWidth(null);
                int scaledHeight = image.getHeight(null);
                if (scaledWidth > MAX_WIDTH) {
                    scaledWidth = MAX_WIDTH;
                    scaledHeight = (int) ((double) MAX_WIDTH / image.getWidth(null) * image.getHeight(null));
                }
                if (scaledHeight > MAX_HEIGHT) {
                    scaledHeight = MAX_HEIGHT;
                    scaledWidth = (int) ((double) MAX_HEIGHT / image.getHeight(null) * image.getWidth(null));
                }
                BufferedImage scaledImage = new BufferedImage(scaledWidth, scaledHeight, BufferedImage.TYPE_INT_RGB);
                Graphics2D g2d = scaledImage.createGraphics();
                g2d.drawImage(image, 0, 0, scaledWidth, scaledHeight, null);
                g2d.dispose();

                // Lưu ảnh với tên file gốc
                File output = new File(uploadFilePath + File.separator + fileName);
                ImageIO.write(scaledImage, "jpg", output);

                // Đường dẫn tương đối của ảnh
                String relativePath = uploadFolder + "/" + fileName;
                request.getServletContext().setAttribute("uploadedImagePath", relativePath);

                chain.doFilter(request, response);
            }
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
    }

    @Override
    public void init(FilterConfig filterConfig) {
        this.filterConfig = filterConfig;
    }

    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return new File(s.substring(s.indexOf("=") + 2, s.length() - 1)).getName();
            }
        }
        return "";
    }
}
