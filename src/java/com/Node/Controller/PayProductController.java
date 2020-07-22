/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.Controller;

import com.Node.DAO.BillDAO;
import com.Node.DAO.BillDetailDAO;
import com.Node.DAO.CustomerDAO;
import com.Node.DAO.ProductDAO;
import com.Node.Entity.Bill;
import com.Node.Entity.BillDetail;
import com.Node.Entity.Customer;
import com.Node.Entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class PayProductController extends HttpServlet {

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
            out.println("<title>Servlet PayProductController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PayProductController at " + request.getContextPath() + "</h1>");
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

        HashMap<Integer, Integer> hm = (HashMap<Integer, Integer>) request.getSession().getAttribute("mapShoppingCart");
         request.setAttribute("isBought", 0);
        if (!hm.isEmpty()) {
            hm = (HashMap<Integer, Integer>) request.getSession().getAttribute("mapShoppingCart");

            boolean checkSP = true;

            for (Map.Entry<Integer, Integer> m : hm.entrySet()) {
                Product p = new ProductDAO().getProduct(m.getKey());
                if (m.getValue() > p.getQuantity()) {
                    request.setAttribute("isBought", 1);
                      request.getRequestDispatcher("/views/shopping-cart.jsp").forward(request, response);
                    checkSP = false;
                }
            }
            if (checkSP) {
                for (Map.Entry<Integer, Integer> m : hm.entrySet()) {
                    Product p = new ProductDAO().getProduct(m.getKey());
                    Bill b = new Bill();
                    Customer c = new CustomerDAO().getCustomer(Integer.parseInt(request.getSession().getAttribute("id").toString()));
                    b.setcId(c.getcId());
                    b.setpId(p.getId());
                    b.setAddress(c.getcAddress());
                    b.setPhone(c.getcPhone());
                    b.setProductPrice(p.getPrice());
                    b.setQuantity(m.getValue());
                    b.setvId(0);
                    b.setPayId(1);
                    b.setSbId(1);
                    new BillDAO().insertBill(b);
                    BillDetail bd = new BillDetail();
                    bd.setbId(new BillDAO().getMaxIdBill());
                    bd.setcId(c.getcId());
                    bd.setPrice(b.getProductPrice() * b.getQuantity());
                    bd.setQuantity(b.getQuantity());
                    bd.setpId(p.getId());
                    new BillDetailDAO().insertBill(bd);
                  new ProductDAO().updateQuantityProduct(m.getValue(), p.getId());
                }
                  hm.clear();
            }

        } else {
            request.setAttribute("isBought", 2);
              request.getRequestDispatcher("/views/shopping-cart.jsp").forward(request, response);
        }
        
        request.getRequestDispatcher("/views/homepage.jsp").forward(request, response);
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
