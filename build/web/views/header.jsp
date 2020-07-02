<%-- 
    Document   : header.jsp
    Created on : Jul 2, 2020, 8:32:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            <%@include file="/css/header.css" %>
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-black fixed-top">
            <div class="container-fluid">
                <a href="#" class="navbar-brand">BerKissG</a>
                <button class="navbar-toggler" data-toggle="collapse"
                        data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto ">
                        <li class="nav-item active"><a href="#" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">Products</a>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
                        <li class="nav-item"><a href="#" class="nav-link"> <i
                                    class="fa fa-shopping-cart fa-2x"></i>
                            </a></li>
                                    <li class="nav-item"><a href="#" class="nav-link">
                                           <i class="fa fa-sign-in fa-2x" aria-hidden="true"></i>

                                </a></li>
                    </ul>
                </div>
            </div>
        </nav>

      
</html>