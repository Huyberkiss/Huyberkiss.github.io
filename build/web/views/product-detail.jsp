<%-- 
    Document   : product-detail
    Created on : Jul 18, 2020, 9:38:21 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product-page</title>
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
            .container{
                margin-top: 100px;
                padding : 50px;
                background-color: #fff;

            }

            body{
                background-color: #eee; 
            }

            h1{
                margin-bottom: 20px; 
                font-weight: bold;
            }

            .newarrival{
                background: green;
                width: 50px;
                color: white;
                font-size: 12px;
                font-weight: bold;
            }
            
            button{
                width: 40%;
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="container">
            <h1 class="text-center">Product detail</h1>
            <hr>
            <div class="row">
                <div class="col-md-5">
                    <img src="${pageContext.request.contextPath}/img/carousel3.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="col-md-7">
                    <p class="newarrival text-center">HOT</p>
                    <h2 style="color: #555">Day chuyen dat gia </h2>
                    <p><b>product code:</b> #hihi02</p>
                    <p><b>Availability:</b> In stock</p>
                    <p><b>Condition:</b> New</p>
                    <p><b>Type:</b> day chuyen </p>
                    <p><b>Brand:</b> Company</p>
                    <p><b>Price:</b> $200</p>
                    <div class="d-flex justify-content-center">
                        <button type="button" class="btn  btn-dark btn-lg" onclick="window.location.href='../ShoppingCartController'">Order now</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
