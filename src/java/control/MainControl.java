/////*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 84868
 */
@WebServlet(name = "MainControl", urlPatterns = {"/MainControl"})
public class MainControl extends HttpServlet {

    private static final String LOGIN_PAGE = "login.jsp";
    private static final String LOGIN = "Sign In";
    private static final String LOGIN_CONTROL = "login";
    private static final String DETAILS = "Details";
    private static final String DETAILS_CONTROL = "detail";
    private static final String SEARCH = "Search";
    private static final String SEARCH_CONTROL = "search";
    private static final String DELETE_ACC = "Delete Account";
    private static final String DELETE_ACCOUNT_CONTROL = "deleteaccount";
    private static final String DELETEMB = "Delete Phone";
    private static final String DELETEMB_CONTROL = "deletephone";
    private static final String UPDATE_ACC = "Update Account";
    private static final String UPDATE_ACC_CONTROL = "updateaccount";
    private static final String UPDATE_PHONE = "Update Phone";
    private static final String UPDATE_PHONE_CONTROL = "updatephone";
    private static final String INSERT = "Insert";
    private static final String INSERT_CONTROL = "insert";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROL = "logout";
    private static final String SIGNUP = "Sign up";
    private static final String SIGNUP_CONTROL = "signup";
    private static final String CREATE = "Add";
    private static final String CREATE_CONTROL = "create";
    private static final String CREATE_PHONE = "Add Phone";
    private static final String CREATE_PHONE_CONTROL = "createphone";
    private static final String ADD_TO_CART = "Add To Cart";
    private static final String ADD_CART = "add";
    private static final String ADD_DETAILS = "Add Details";
    private static final String ADD_DETAILS_CONTROL = "adddetails";
    private static final String VIEW = "View";
    private static final String VIEW_PAGE = "Cart.jsp";
    private static final String VIEWALL = "View All";
    private static final String VIEWALL_CONTROL = "product";
    private static final String VIEWALLU = "View All Product";
    private static final String VIEWALLU_CONTROL = "productuser";
    private static final String SEARCH_AD = "SearchAD";
    private static final String SEARCH_AD_CONTROL = "searchad";
    private static final String REMOVE = "Remove";
    private static final String REMOVE_CONTROL = "remove";
    private static final String QUANTITY = "Decrease";
    private static final String QUANTITY_CONTROL = "quantity";
    private static final String CLEAR = "Clear";
    private static final String CLEAR_CONTROL = "clear";
    private static final String CHECKOUT = "Checkout";
    private static final String CHECKOUT_CONTROL = "checkout";
    
    
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
        String url = LOGIN_PAGE;
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_CONTROL;
            } else if (SIGNUP.equals(action)) {
                url = SIGNUP_CONTROL;
            } else if (SEARCH.equals(action)) {
                url = SEARCH_CONTROL;
            } else if (DELETE_ACC.equals(action)) {
                url = DELETE_ACCOUNT_CONTROL;
            } else if (UPDATE_ACC.equals(action)) {
                url=UPDATE_ACC_CONTROL;
            } else if (UPDATE_PHONE.equals(action)) {
                url = UPDATE_PHONE_CONTROL;
            } else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROL;
            } else if (CREATE.equals(action)) {
                url = CREATE_CONTROL;
            } else if (CREATE_PHONE.equals(action)) {
                url = CREATE_PHONE_CONTROL;
            } else if (DELETEMB.equals(action)) {
                url = DELETEMB_CONTROL;
            } else if (INSERT.equals(action)) {
                url = INSERT_CONTROL;
            } else if (ADD_TO_CART.equals(action)) {
                url = ADD_CART;
            } else if (VIEW.equals(action)) {
                url = VIEW_PAGE;
            } else if (SEARCH_AD.equals(action)) {
                url = SEARCH_AD_CONTROL;
            } else if (REMOVE.equals(action)) {
                url = REMOVE_CONTROL;
            } else if (VIEWALL.equals(action)) {
                url = VIEWALL_CONTROL;
            } else if (VIEWALLU.equals(action)) {
                url = VIEWALLU_CONTROL;
            } else if (DETAILS.equals(action)) {
                url = DETAILS_CONTROL;
            } else if (CLEAR.equals(action)) {
                url = CLEAR_CONTROL;
            } else if (ADD_DETAILS.equals(action)) {
                url = ADD_DETAILS_CONTROL;
            } else if (CHECKOUT.equals(action)) {
                url = CHECKOUT_CONTROL;
            } else if (QUANTITY.equals(action)||action.equals("Increase")) {
                url = QUANTITY_CONTROL;
            } else {
                request.setAttribute("ERROR", "Your action is not supported!");
            }
        } catch (Exception e) {
            log("Error at: MainController" + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

//    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
