<%-- 
    Document   : product-detail
    Created on : Jul 18, 2020, 9:38:21 AM
    Author     : Admin
--%>

<%@page import="com.Node.Entity.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <script src="./src/bootstrap-input-spinner.js"></script>
        <script>
            $("input[type='number']").inputSpinner()
        </script>
        <style>
            .container{
                margin-top: 100px;
                padding : 50px;
                background-color: #fff;
                height: 100vh;


            }

            body{
                background: #eecda3;

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

            p{
                font-family: sans-serif;
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <div class="container rounded shadow-sm">
            <h1 class="text-center">Product detail</h1>
            <hr>
            <div class="row">
                <div class="col-md-5">
                    <c:forEach var="i" items="${listIMG}">
                        <img src="${pageContext.request.contextPath}/img/${i.url}" class="d-block w-100" alt="...">
                    </c:forEach>
                </div>
                <div class="col-md-7">
                    <p class="newarrival text-center">HOT</p>
                    <h3>${product.name}</h3>
                    <p><b>Price: </b> $${product.price}0</p>
                    <p><b>Brand: </b>${product.brand}</p>
                    <p><b>Type: </b>${product.type}</p>
                    <p><b>Category: </b>${product.category}</p>
                    <p><b>Color: </b>${product.color}</p>
                    <p><b>Length: </b>${product.length}</p>
                    <p><b>Description: </b>${product.description}</p>
                    <form action="${pageContext.request.contextPath}/ShoppingCartController">
                        <input type="hidden" value="${product.id}" name="id"/>
                        <p><b>Enter quantity: </b> <input style="margin-left: 20px" name="quantity" placeholder="number" required type="number" value="0" min="0" max="100"/>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn  btn-dark btn-lg">Order now</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
