/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.itemDAOImpl;
import com.DB.DBConnect;
import com.entity.itemDetailes;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Naveen Dilshan
 */
@WebServlet(name = "editItemsServlet", urlPatterns = {"/editItemsServlet"})
public class editItemsServlet extends HttpServlet {

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
            out.println("<title>Servlet editItemsServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editItemsServlet at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);


           try{
                
                int id =Integer.parseInt(request.getParameter("id"));
                String itemName = request.getParameter("iName");
                String year = request.getParameter("year");
                Double price = Double.parseDouble(request.getParameter("price"));
                String stat = request.getParameter("iStat");
                
                itemDetailes b= new itemDetailes();
                b.setItemId(id);
                b.setItemName(itemName);
                b.setM_year(year);
                b.setPrice(price);
                b.setStatus(stat);
             
                itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                boolean f = dao.updateEditItems(b);
                
                HttpSession session=request.getSession();
                
                if(f){
//                        System.out.println("Account created succesfully");
                          session.setAttribute("SuccMsg" , "BOOk update Succesfully");
                           response.sendRedirect("admin/all_items.jsp");
                         
                    }
                    else{
//                        System.out.println("Something went wrong");
                           session.setAttribute("faildMsg","Something wrong on server");
                           response.sendRedirect("admin/adminHome.jsp");
                
                
           }
           }
           catch(Exception e){
               e.printStackTrace();
           }
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
