/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.userDAOImpl;
import com.DB.DBConnect;
import com.entity.user;
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
@WebServlet(name = "UpdateProfileServlet", urlPatterns = {"/UpdateProfileServlet"})
public class UpdateProfileServlet extends HttpServlet {

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
            out.println("<title>Servlet UpdateProfileServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateProfileServlet at " + request.getContextPath() + "</h1>");
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



            try{
                HttpSession session = request.getSession();
               int id = Integer.parseInt(request.getParameter("id"));
               String username = request.getParameter("username");    
               String email = request.getParameter("email");
               String phone = request.getParameter("phone");
               
               
               user y = new user();
               y.setId(id);
               y.setName(username);
               y.setEmail(email);
               y.setPhno(phone);
               
               userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
               boolean f = dao.updateProfile(y);
               
               if(f){
                   session.setAttribute("UpdateSuccMsg","Profile Edited");
                   response.sendRedirect("Userprofile1.jsp");
               }
               else{
                    
                   session.setAttribute("UpdateFailedMsg","Wrong Password ");
                   response.sendRedirect("Userprofile1.jsp");
               }
               
            }
            catch(Exception e){
                
            }
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);




           try(PrintWriter out = response.getWriter()){
               
               HttpSession session = request.getSession();
               int id = Integer.parseInt(request.getParameter("id"));
               String cPass = request.getParameter("currentpass");    
               String nPass = request.getParameter("newpass");
               String cnPass = request.getParameter("confirmpass");
               
               userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
               boolean f = dao.checkPassword(cPass, id);
               
               if(f){
                   if(nPass.equals(cnPass)){
                        user u = new user();
                        u.setId(id);
                        u.setPassword(nPass);
                        
                        dao.updatePassword(u);
                        
                        session.setAttribute("UpdateSuccMsg","Profile Edited");
                        response.sendRedirect("Userprofile2.jsp");
                        
                   }
                   else{
                       session.setAttribute("UpdateFailedMsg","Doesn't match new Password and confirm password");
                       response.sendRedirect("Userprofile2.jsp");
                   }
               }
               else{
                   session.setAttribute("UpdateFailedMsg","Wrong Password ");
                   response.sendRedirect("Userprofile2.jsp");
               }
           }
           
           catch(Exception e){
               e.printStackTrace();
           }

//         try{
//            int id = Integer.parseInt(request.getParameter("id"));
//            String name=request.getParameter("fname");
//            String email = request.getParameter("email");
//            String phno =request.getParameter("phno");
//            String password = request.getParameter("password");
//            
//            userDAOImpl dao = new userDAOImpl(DBConnect.getConn());
//            boolean f = dao.checkPassword(password,id);
//            
//            HttpSession session = request.getSession();
//            
//            user us = new user();
//            us.setId(id);
//            us.setName(name);
//            us.setEmail(email);
//            us.setPhno(phno);
//           
//            
//            if(f){
//                boolean f2=dao.updateProfile(us);
//                if(f2){
//                    session.setAttribute("SuccMsg" , "Profile Update Succesfully");
//                    response.sendRedirect("edit_profile.jsp");
//                }
//                else{
//                    session.setAttribute("SuccMsg" , "Something went wrong");
//                    response.sendRedirect("edit_profile.jsp");
//                }
//            }
//            else{
//                session.setAttribute("failedMsg" , "your passsword is inncorrect");
//                response.sendRedirect("edit_profile.jsp");
//            }
//            
//            
//              
//          }catch(Exception e){
//              e.printStackTrace();
//          }
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
