<%-- 
    Document   : product
    Created on : Jul 6, 2020, 4:05:49 PM
    Author     : Admin
--%>

<%@page import="com.Node.Entity.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
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
            .color-card{
                background-color:  #ffc7e5;
            }

            h5{
                font-family: sans-serif;
                font-size: 10px;
                font-weight: bold;
               padding-bottom: 10px;
            }

            .card{
                border : 1px solid white;
            }

            .card-text{
                display: block;
            }

            body{
                background-color: #eee;
            }

            .class-control{
                margin-top: 70px !important;

            }

            .products  div {
                width: 80% !important; 
            }

            .filter{
                width: 50% !important;
                height: 28vh;
                border : 4px solid lightsteelblue;
                margin-right: 20px;
                padding: 10px;
            }

            .filter-name{
                font-size: 22px;
                text-align: center;
                font-weight: bold;
                color: darkslateblue;
            }

            .pd-price{
             
               
                    font-family: monospace;
               
              
              
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <%
           // ArrayList<Product> listProduct = (ArrayList<Product>)request.getAttribute("listProduct");
           // pageContext.setAttribute("listProduct", listProduct);

        %>

        <div class="container class-control">
            <h1 class="text-center font-weight-bold">Product</h1>
            <hr>
            <div class="row ">
                <div class=" col-md-3 filter">
                    <h3 class="filter-name">Filter Product</h3>
                    <form action="${pageContext.request.contextPath}/ProductController" class="form my-2 my-lg-0 ">
                        <input class="form-control mr-sm-2 mb-2 " size="10" type="search" placeholder="Search" name="search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0 "  type="submit">Search</button>
                    </form>
                    <div style="padding-top: 10px" class="btn-group dropright">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Sort by:
                        </button>
                        <div class="dropdown-menu">
                            <button class="dropdown-item" onclick="window.location.href='${pageContext.request.contextPath}/ProductController'"
                                    type="button">Default</button>
                           <button class="dropdown-item "  type="button" onclick="window.location.href='${pageContext.request.contextPath}/ProductController?sort=ASC'" 
                                   >Sort Alphabet A-Z</button>
                            <button class="dropdown-item "  type="button" onclick="window.location.href='${pageContext.request.contextPath}/ProductController?sort=DESC'"
                                    >Sort Alphabet Z-A</button>
                             <button class="dropdown-item "  type="button" onclick="window.location.href='${pageContext.request.contextPath}/ProductController?price=DESC'"
                                     >Highest Money</button>
                              <button class="dropdown-item "  type="button" onclick="window.location.href='${pageContext.request.contextPath}/ProductController?price=ASC'"
                                      >Lowest Money</button>
                        </div>
                    </div>
                </div>
                <div class="row col-md-9 product">
                    <c:forEach var="i" items="${listProduct}">       
                        <div class="col-md-4 mb-4">
                            <div class="card h-100 ">
                                <img src="${pageContext.request.contextPath}/img/${i.imgID}.jpg" class="card-img-top"/>
                                <div class="card-body  color-card">
                                    <div class="card-text ">
                                        <h5 class="card-title">${i.name}</h5>
                                        <span class="d-flex justify-content-end pd-price">Price: $${i.price}</span>
                                    </div>
                                    <div class="card-text d-flex justify-content-between btn-card">
                                        
                                        <button type="button" onclick="window.location.href = '${pageContext.request.contextPath}/ProductDetailController?id=${i.id}'"
                                                class="btn btn-light"style="font-size: 14px"> Order </button>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
