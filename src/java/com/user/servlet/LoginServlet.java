/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.entity.user;
import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
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
        // login session end method
//             String logoutParam = request.getParameter("logout");
//             if ("true".equals(logoutParam)) {
//                    logout(request, response);
//                } else {
//                    processRequest(request, response);
//                }
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
            
            userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
            
            HttpSession session = request.getSession();
            
            String loginType = request.getParameter("loginType");
            String name =request.getParameter("uname");
            String password = request.getParameter("password");
            
//            System.out.println(name+" "+password);



            if ("admin".equals(loginType)) {
                
                if("admin".equals(name)&& "admin".equals(password)){
                response.sendRedirect("admin/Addminhome.jsp");
                }
                else{
                    session.setAttribute("LogfailedMsg","Email & Password invalid");
                    response.sendRedirect("login1.jsp");
                }
                
            }
             else if ("user".equals(loginType)) {
                    
                 user us = dao.login(name,password);
                if(us !=null){
                    session.setAttribute("userobj",us);
                    response.sendRedirect("index.jsp");
                } 
                else{
                    session.setAttribute("LogfailedMsg","Email & Password invalid");
                    response.sendRedirect("login1.jsp");
                }
                 
    }

            
            else{
                
                System.out.println("wrong"); 
                
                
            }
            
        } catch(Exception e){
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
    
    // User log session end
//     private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session = request.getSession(false); // Pass false to getSession to avoid creating a new session
//        if (session != null) {
//            session.invalidate(); // Invalidate the current session
//        }
//        response.sendRedirect("index.jsp"); // Redirect to home page or any other page after logout
//    }

}
