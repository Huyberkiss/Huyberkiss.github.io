<%-- 
    Document   : product
    Created on : Jul 6, 2020, 4:05:49 PM
    Author     : Admin
--%>

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

            .btn-card{

            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>



        <div class="container class-control">
            <h1 class="text-center font-weight-bold">Product</h1>
            <hr>
            <div class="row ">
                <div class=" col-md-2 filter">
                    <h3 class="filter-name">Filter Product</h3>
                    <form class="form my-2 my-lg-0 ">
                        <input class="form-control mr-sm-2 mb-2 " size="10" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0 "  type="submit">Search</button>
                    </form>
                    <div style="padding-top: 10px" class="btn-group dropright">
                        <button type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           Sort by:
                        </button>
                        <div class="dropdown-menu">
                           <button class="dropdown-item "  type="button">A-Z</button>
                            <button class="dropdown-item "  type="button">Z-A</button>
                             <button class="dropdown-item "  type="button">Highest Money</button>
                              <button class="dropdown-item "  type="button">Lowest Money</button>
                        </div>
                    </div>
                </div>
                <div class="row col-md-10 product">
                    <c:forEach var="x" begin="1" end="8">       
                        <div class="col-md-3 mb-4">
                            <div class="card h-100 ">
                                <img src="${pageContext.request.contextPath}/img/pd${x}.jpg" class="card-img-top w-100"/>
                                <div class="card-body  color-card">
                                    <div class="card-text d-flex justify-content-between">
                                        <h5 class="card-title">Product --</h5>
                                        <span >$300</span>

                                    </div>
                                    <div class="card-text d-flex justify-content-between btn-card">
                                        <button type="button" onclick="window.location.href = 'product-detail.jsp'" class="btn btn-primary" style="font-size: 14px"> View  </button>
                                        <button type="button" onclick="window.location.href = 'shopping-cart.jsp'" class="btn btn-light"style="font-size: 14px"> Order </button>

                                    </div>


                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>
