/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DB.DBConnect;
import com.entity.user;
import com.DAO.userDAOImpl;

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
@WebServlet(name = "registerServlet", urlPatterns = {"/registerServlet"})
public class registerServlet extends HttpServlet {

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
            out.println("<title>Servlet registerServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerServlet at " + request.getContextPath() + "</h1>");
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
            String name=request.getParameter("fname");
            String email = request.getParameter("email");
//            String phno =request.getParameter("phno");
            String password = request.getParameter("password");
            String check = request.getParameter("check");

          System.out.println(name + " " +email+" " +password+" "+check);

            user us =new user();
            us.setName(name);
            us.setEmail(email);
//            us.setPhno(phno);
            us.setPassword(password);
            
            
            HttpSession httpSession = request.getSession();
            
            //Term & conditions Agree
            if(check!=null){
                    userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
                    boolean f= dao.userRegister(us);

                    if(f){
//                        System.out.println("Account created succesfully");
                           httpSession.setAttribute("RSuccMsg" , "Registration Succesfully");
                           
                           response.sendRedirect("register1.jsp");
                         
                    }
                    else{
//                        System.out.println("Something went wrong");
                           httpSession.setAttribute("RfaildMsg","Something wrong on server");
                           response.sendRedirect("register1.jsp");
                           
                    }
                }
            else{
//                System.out.println("Please check agree &term conditions");
                   
                   httpSession.setAttribute("RfaildMsg","please check terms and conditions");
                    response.sendRedirect("register1.jsp");
            }
            
            
              
          }catch(Exception e){
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
