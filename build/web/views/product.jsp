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

            .card-text{
                display: block;
            }

            .class-controll{
                margin-top: 70px !important;
            }

          
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        

        <div class="container class-controll">
            <h1 class="text-center font-weight-bold">Product</h1>
            <hr>
            <div class="row">
                <c:forEach var="x" begin="1" end="8">       
                    <div class="col-md-3 mb-4">
                        <div class="card h-100 ">
                            <img src="${pageContext.request.contextPath}/img/pd${x}.jpg" class="card-img-top w-100"/>
                            <div class="card-body  color-card">
                                <div class="card-text d-flex justify-content-between">
                                    <h5 class="card-title">Product --</h5>
                                    <span >$300</span>

                                </div>
                                <div class="card-text d-flex justify-content-between">
                                   <button type="button" onclick="window.location.href = 'product-detail.jsp'" class="btn btn-primary"> View Detail </button>
                                <button type="button" onclick="window.location.href = 'shopping-cart.jsp'" class="btn btn-light"> Order </button>

                                </div>
                                

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


    </body>
</html>
