/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.cartDAOImpl;
import com.DB.DBConnect;
import com.entity.cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Naveen Dilshan
 */
@WebServlet(name = "RemoveItemCart", urlPatterns = {"/RemoveItemCart"})
public class RemoveItemCart extends HttpServlet {

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
            out.println("<title>Servlet RemoveItemCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RemoveItemCart at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
            

               try(PrintWriter out = response.getWriter()){
                   String Iid = (request.getParameter("Iid"));
//                   int Cid = Integer.parseInt(request.getParameter("Cid"));
                   
                   if(Iid != null){
                       ArrayList<cart> cart_list = (ArrayList<cart>) request.getSession().getAttribute("cart-list");
                       if(cart_list != null){
                           for(cart c:cart_list){
                               if(c.getIid()==Integer.parseInt(Iid)){
                                   cart_list.remove(cart_list.indexOf(c));
                                   break;
                               }
                           }
                           response.sendRedirect("checkout.jsp");
                       }
                   }
                   else{
                       response.sendRedirect("checkout.jsp");
                   }
               }
               catch(Exception e){
                e.printStackTrace();
               }
//            cartDAOImpl dao = new cartDAOImpl(DBConnect.getConn());
//            boolean f= dao.deleteItem(Iid,Cid);
//            
//            HttpSession session = request.getSession();
//            
//            if(f){
//                 session.setAttribute("succMsg","Email & Password invalid");
//                 response.sendRedirect("checkout.jsp");
//            }
//            else{
//                 session.setAttribute("failedMsg","Email & Password invalid");
//                 response.sendRedirect("checkout.jsp");
//            }
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
