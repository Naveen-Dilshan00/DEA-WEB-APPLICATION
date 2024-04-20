/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.cartDAOImpl;
import com.DAO.itemDAOImpl;
import com.DB.DBConnect;
import com.entity.cart;
import com.entity.itemDetailes;
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
@WebServlet(name = "CartServlet", urlPatterns = {"/CartServlet"})
public class CartServlet extends HttpServlet {

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
            out.println("<title>Servlet CartServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
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
                
                int Iid = Integer.parseInt(request.getParameter("Iid"));
                int Uid = Integer.parseInt(request.getParameter("Uid"));
                
                itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                itemDetailes b = dao.getItemsById(Iid);
                
                cart c = new cart();
                c.setIid(Iid);
                c.setUserId(Uid);
<<<<<<< Updated upstream
=======
                c.setcQuantity(1);
>>>>>>> Stashed changes
                c.setItemName(b.getItemName());
                c.setM_year(b.getM_year());
                c.setPrice(b.getPrice());
                c.setTotallPrice(b.getPrice());
<<<<<<< Updated upstream
                System.out.println("");
                cartDAOImpl dao2 =new cartDAOImpl(DBConnect.getConn());
                boolean f =dao2.addCart(c);
=======
                
               
>>>>>>> Stashed changes
                
                HttpSession session =request.getSession();
                
<<<<<<< Updated upstream
                if(f){
=======
                if(cart_list == null){
                    cartList.add(c);
//                    cartDAOImpl dao2 =new cartDAOImpl(DBConnect.getConn());
//                    boolean f =dao2.addCart(c);
                    session.setAttribute("cart-list",cartList);
>>>>>>> Stashed changes
                    session.setAttribute("addCart","Book added to the cart");
                    response.sendRedirect("all_Laps.jsp");
                    System.out.println("Add cart Succesfully");
                }
                else{
<<<<<<< Updated upstream
                    session.setAttribute("failed","something went wrong");
                    response.sendRedirect("all_Laps.jsp");
                    System.out.println("Not added card");
=======
                    cartList = cart_list;
                    boolean exist =false;
                    
                    for(cart cd:cart_list){
                        if(cd.getIid() == Iid){
                            exist=true;
                            out.println("Product exist");
                            session.setAttribute("addCart","item Already exist");
                            response.sendRedirect("all_Laps.jsp");
                            break;
                        }
                    }
                    if(!exist){
                        cartList.add(c);
//                        cartDAOImpl dao2 =new cartDAOImpl(DBConnect.getConn());
//                        boolean f =dao2.addCart(c);
                        session.setAttribute("addCart","Book added to the cart");
                        response.sendRedirect("all_Laps.jsp");
                       
                    }
>>>>>>> Stashed changes
                }
                
            }
            catch(Exception e){
                e.printStackTrace();
            }
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
