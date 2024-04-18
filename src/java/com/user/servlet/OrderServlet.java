/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user.servlet;

import com.DAO.cartDAOImpl;
import com.DAO.itemOrderDAOImpl;
import com.DB.DBConnect;
import com.entity.cart;
import com.entity.item_order;
import com.entity.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
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
@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

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
            out.println("<title>Servlet OrderServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet OrderServlet at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response

                
            try{
                
                HttpSession session = request.getSession();
                user u =(user)session.getAttribute("userobj");
                
                int id = Integer.parseInt(request.getParameter("id"));
                String Name = request.getParameter("name");
                String Email = request.getParameter("email");
                String Phonenumber = request.getParameter("phno");
                String Address = request.getParameter("address");
                String Landmark = request.getParameter("landmark");
                String City = request.getParameter("city");
                String Zip = request.getParameter("zip");
                String Paymenttype = request.getParameter("payment");
                
                
                String fullAdd = Address+","+Landmark+","+City+","+Zip;
                
                
                cartDAOImpl dao =new cartDAOImpl(DBConnect.getConn());
                
                List<cart> itemlist = dao.getItemByUser(id);
                
                if(itemlist.isEmpty())
                {
                    session.setAttribute("failedMsg","ADD Item");
                    response.sendRedirect("checkout.jsp");
                }
                else{
                    itemOrderDAOImpl dao2 = new itemOrderDAOImpl(DBConnect.getConn());
                int i = dao2.getOrderNo();
                
                item_order o= null;
                
                ArrayList<item_order> orderList = new ArrayList<item_order>();
                Random r =new Random();
                for(cart c:itemlist){
                    o = new item_order();
//                    o.setOrder_Id("BOOK-ORD-00"+ r.nextInt(1000));
                    o.setId(u.getId());
                    o.setUserName(u.getName());
                    o.setEmail(Email);
                    o.setPhone(Phonenumber);
                    o.setFullAdd(fullAdd);
                    o.setItemName(c.getItemName());
                    o.setPrice(c.getPrice()+"");
                    o.setPaymenttype(Paymenttype);
                    
                    orderList.add(o);
                    i++;
                }
                
                
               if(Paymenttype.equals("nonselect")){
                   session.setAttribute("failedMsg", "choose Payment Method");
                   response.sendRedirect("placeOrder.jsp");
               }
               else{
                   
                    boolean f= dao2.saveOrder(orderList);
                    
                    if(f){
                        response.sendRedirect("succes.jsp");
                        System.out.println("Order succesfull");
                    }
                    else{
                        System.out.println("Order failed");
                    }
                 }
                }
            }
            catch(Exception e){
                System.out.println(e);
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
