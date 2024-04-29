/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.admin.servlet;

import com.DAO.itemDAOImpl;
import com.DB.DBConnect;
import com.entity.itemDetailes;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
@WebServlet(name = "itemsAdd", urlPatterns = {"/itemsAdd"})
@MultipartConfig
public class itemsAdd extends HttpServlet {

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
            out.println("<title>Servlet itemsAdd</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet itemsAdd at " + request.getContextPath() + "</h1>");
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
                
                String itemName = request.getParameter("iName");
                String year = request.getParameter("year");
                Double price = Double.parseDouble(request.getParameter("price"));
                String catergory = request.getParameter("iCater");
                String stat = request.getParameter("iStat");
                Part par = request.getPart("phoName");
                String fileName = par.getSubmittedFileName();
                
                
                itemDetailes b =new itemDetailes(itemName,year,price,catergory,stat,fileName,"admin");
                System.out.println(b);
                
                itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                
                boolean f = dao.addItem(b);
                
                HttpSession session = request.getSession();
                
                 if(f){
//                String path =getServletContext().getRealPath("") + File.separator + "Books";
//                System.out.println(path);
//                File f = new File(path);
//                par.write(path + File.separator+ fileName);
                     
                        
//                         System.out.println("Account created succesfully");
                           session.setAttribute("SuccMsg" , "Registration Succesfully");
                           response.sendRedirect("admin/Addminhome.jsp");
                           System.out.println("aaaaaaaaaaaaaaaaaaaa");
                         
                    }
                    else{
//                        System.out.println("Something went wrong");
                           session.setAttribute("faildMsg","Something wrong on server");
                           response.sendRedirect("admin/AddminHome.jsp");
                           System.out.println("bbbbbbbbbbbbbbbbb");
                           
                    }
                
            }  catch(Exception e){
                System.out.println("wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
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
