<%-- 
    Document   : billDetail
    Created on : Jul 22, 2020, 9:27:52 PM
    Author     : Admin
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.Node.DAO.ProductDAO"%>
<%@page import="com.Node.DAO.BillDetailDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Node.Entity.BillDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                    onclick="window.location.href = '${pageContext.request.contextPath}/views/historybill.jsp'">back to history</button>
                           
                            <table class="table table-striped text-center">
                                <thead>
                                    <tr>

                                        <th scope="col">id Bill</th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Price</th>                                      
                                        <th scope="col">Order Date</th>

                                    </tr>
                                </thead>
                                <tbody>

                                    <%
                                        int id = Integer.parseInt(request.getSession().getAttribute("id").toString());
                                        ArrayList<BillDetail> listBillDetail = new BillDetailDAO().listBillDetailByIdBill(id);
                                        //   String[] fullName = new CustomerDAO().getCustomer(id).getcName().split(" ");
                                        double totalPrice = 0;
                                        // String firstName = fullName[fullName.length - 1];
                                        for (BillDetail b : listBillDetail) {

                                            out.print("<tr class=\"text-center\">");
                                           
                                            out.println("<td>" + b.getbId() + "</td>");
                                            out.println("<td>" + new ProductDAO().getProduct(b.getpId()).getName() + "</td>");
                                            out.println("<td>" + b.getQuantity() + "</td>");
                                            out.println("<td>" + b.getPrice() + "</td>");
                                            out.println("<td>" + new SimpleDateFormat("dd/MM/yyyy").format(b.getOrderDate()) + "</td>");
                                            
                                            out.print("</tr>");
                                            
                                            totalPrice += b.getPrice();
                                        }


                                    %>

                                <h3> Total price: <%= totalPrice %> </h3>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
