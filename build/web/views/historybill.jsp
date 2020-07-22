<%-- 
    Document   : historybill
    Created on : Jul 21, 2020, 8:01:22 PM
    Author     : Admin
--%>

<%@page import="com.Node.DAO.StatusBillDAO"%>
<%@page import="com.Node.DAO.PaymentDAO"%>
<%@page import="com.Node.DAO.ProductDAO"%>
<%@page import="com.Node.DAO.CustomerDAO"%>
<%@page import="com.Node.DAO.BillDAO"%>
<%@page import="com.Node.Entity.Bill"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bill</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body{
            background: -webkit-linear-gradient(left, #3231af, #11e6ff);
        }
        
        .btn{
            margin-bottom: 3%; 
            margin-right: 20px;
        }
    </style>
    <body>
        

        <div class="px-4 px-lg-0 container-fluid mt-5">
            <div class="container text-white py-5 text-center">
                <h1 class="display-4"> History</h1>
            </div>

            <div class="pb-5">
                <div class="container-fluid">
                    <div class="row">
                       
                        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
                            <button class="btn btn-outline-success" 
                                    onclick="window.location.href='${pageContext.request.contextPath}/views/profileUser.jsp'">back To profile</button>
                             <button class="btn btn-outline-primary"
                                     onclick="window.location.href='${pageContext.request.contextPath}/views/billDetail.jsp'">see detail</button>
                            <table class="table table-striped text-center">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Address</th>
                                        <th scope="col">Phone</th>
                                        <th scope="col">Product price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">voucher</th>
                                        <th scope="col">payment</th>
                                        <th scope="col">status bill</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        int id = Integer.parseInt(request.getSession().getAttribute("id").toString());
                                        ArrayList<Bill> listBill = new BillDAO().listBillByIdCustomer(id);
                                        String[] fullName = new CustomerDAO().getCustomer(id).getcName().split(" ");
                                        
                                        String firstName = fullName[fullName.length - 1];

                                        
                                        
                                        for (Bill b : listBill) {
                                            
                                            String payment = new PaymentDAO().getStatusBillById(b.getPayId());
                                            String statusBill = new StatusBillDAO().getStatusBillById(b.getSbId());
                                            
                                            out.print("<tr class=\"text-center\">");
                                            out.println("<td>" + firstName + "</td>");
                                            out.println("<td>" + new ProductDAO().getProduct(b.getpId()).getName() + "</td>");
                                            out.println("<td>" + b.getAddress() + "</td>");
                                            out.println("<td>" + b.getPhone() + "</td>");
                                            out.println("<td>" + b.getProductPrice() + "</td>");
                                            out.println("<td>" + b.getQuantity() + "</td>");
                                            out.println("<td>" + b.getvId() + "</td>");
                                            out.println("<td>" + payment + "</td>");
                                            out.println("<td>" + statusBill + "</td>");
                                            out.print("</tr>");

                                        }


                                    %>

                                   

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
