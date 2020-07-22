<%-- 
    Document   : shopping-cart
    Created on : Jul 14, 2020, 9:03:38 PM
    Author     : Admin
--%>

<%@page import="com.Node.Entity.Product"%>
<%@page import="com.Node.DAO.ProductDAO"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
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
            body {
                background: #eecda3;
                background: -webkit-linear-gradient(to right, #eecda3, #ef629f);
                background: linear-gradient(to right, #eecda3, #ef629f);
                min-height: 100vh;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="px-4 px-lg-0">
            <!-- For demo purpose -->
            <div class="container text-white py-5 text-center">
                <h1 class="display-4"> Shopping Cart</h1>
                <p class="lead mb-0">Your product selected here </p>
                </p>
            </div>
            <!-- End -->


            <div class="pb-5">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                            <!-- Shopping cart table -->
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="p-2 px-3 text-uppercase">Product</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Price</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Quantity</div>
                                            </th>
                                            <th scope="col" class="border-0 bg-light">
                                                <div class="py-2 text-uppercase">Remove</div>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%

                                            float total = 0;
                                            if (request.getSession().getAttribute("mapShoppingCart") != null) {
                                                HashMap<Integer, Integer> hm = (HashMap<Integer, Integer>) request.getSession().getAttribute("mapShoppingCart");

                                                for (Map.Entry<Integer, Integer> m : hm.entrySet()) {
                                                    Product p = new ProductDAO().getProduct(m.getKey());

                                                    out.println("<tr>");
                                                    out.println(" <th scope=\"row\" >");
                                                    out.print("<div class=\"p-2\">");
                                                    out.print("<img src=\"" + "/ProjectPRJ/img/" + p.getImgID() + ".jpg" + " \"  width=\"70\" class=\"img-fluid rounded shadow-sm\">");
                                                    out.print("<div class=\"ml-3 d-inline-block align-middle\">");
                                                    out.print("<h5 class=\"mb-0\"> <a href=\"#\" class=\"text-dark d-inline-block align-middle\">" + p.getName() + "</a></h5>");
                                                    out.print("<span class=\"text-muted font-weight-normal font-italic d-block\">Category: " + p.getCategory() + "</span>");
                                                    out.print(" </div>");
                                                    out.print("</div>");
                                                    out.print("</th>");
                                                    out.print("  <td class=\"border-0 align-middle\"><strong>$" + p.getPrice() * m.getValue() + " </strong></td>");
                                                    out.print("  <td class=\"border-0 align-middle\"><strong>" + m.getValue() + "</strong></td>");
                                                    out.print("<td class=\"border-0 align-middle\"><a href=\"/ProjectPRJ/ShoppingCartDeleteController?delete=" + p.getId() + "\" class=\"text-dark\"><i class=\"fa fa-trash\"></i></a></td>");
                                                    out.print("</tr>");
                                                    total += p.getPrice() * m.getValue();
                                                }

                                            }

                                            if (request.getAttribute("isBought") != null) {
                                                if (Integer.parseInt(request.getAttribute("isBought").toString()) == 1) {
                                                    out.print("<script> alert('your quantity you buy is greater than quantity in shop , sorry ')  </script>");
                                                } else if (Integer.parseInt(request.getAttribute("isBought").toString()) == 2) {
                                                    out.print("<script> alert('your Cart is Empty')  </script>");
                                                }
                                            }
                                        %>

                                    </tbody>
                                </table>
                            </div>
                            <!-- End -->
                        </div>
                    </div>


                    <div class="row py-5 p-4 bg-white rounded shadow-sm">
                        <div class="col-lg-6">
                            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Coupon code</div>
                            <div class="p-4">
                                <p class="font-italic mb-4">If you have a coupon code, please enter it in the box below</p>
                                <div class="input-group mb-4 border rounded-pill p-2">
                                    <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0">
                                    <div class="input-group-append border-0">
                                        <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Apply coupon</button>
                                    </div>
                                </div>
                            </div>


                        </div>
                        <div class="col-lg-6">
                            <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Order summary </div>
                            <div class="p-4">
                                <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
                                <ul class="list-unstyled mb-4">
                                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong>$<%= total%></strong></li>
                                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>$10.00</strong></li>
                                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tax</strong><strong>$0.00</strong></li>
                                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                        <h5 class="font-weight-bold">$<%= total + 10%></h5>
                                    </li>
                                </ul><a href="/ProjectPRJ/PayProductController" class="btn btn-dark rounded-pill py-2 btn-block">Procceed to checkout</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </body>
</html>
