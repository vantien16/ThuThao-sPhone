/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.awt.Dimension;
import java.awt.Toolkit;
import dao.ProductDAO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.jni.SSLConf;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CreatePhoneControl", urlPatterns = {"/createphone"})
public class CreatePhoneControl extends HttpServlet {

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
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String configuration = request.getParameter("configuration");
        int manufacturing_year = Integer.parseInt(request.getParameter("manufacturing_year"));
        float price = Float.parseFloat(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String url = request.getParameter("url");
        try {
            ProductDAO dao = new ProductDAO();
            if (dao.checkProduct(id, name)) {
                request.setAttribute("errorMessage", "ID or Name is already exist!");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            } else if (ImageSizeChecker(url) == false) {
                request.setAttribute("errorMessage", "The image is not in the correct format");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            } else {
                dao.addProduct(id, name, description, configuration, manufacturing_year, price, quantity, url);
                request.setAttribute("errorMessage", "Add success!");
                request.getRequestDispatcher("admin.jsp").forward(request, response);
            }
        } catch (Exception e) {
        }
    }

    public boolean ImageSizeChecker(String url1) {
        String imageUrl = url1;//link
        try {
            //link
            URL url = new URL(imageUrl);
            BufferedImage image = ImageIO.read(url);
            int width = image.getWidth();
            int height = image.getHeight();
            //link      
            if ((height == 600 && width == 600)) {
                return true;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return false;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
