<%-- 
    Document   : header.jsp
    Created on : Jul 2, 2020, 8:32:10 AM
    Author     : Admin
--%>

<%@page import="java.util.HashMap"%>
<%@page import="com.Node.DAO.CustomerDAO"%>
<%@page import="com.Node.Entity.Customer"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> %>
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
        <nav class="navbar navbar-expand-sm navbar-dark bg-black fixed-top">
            <div class="container-fluid">
                <a href="${pageContext.request.contextPath}/views/homepage.jsp" class="navbar-brand">BerKissG</a>
                <button class="navbar-toggler" data-toggle="collapse"
                        data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav ml-auto  ">
                        <li class="nav-item active"><a href="${pageContext.request.contextPath}/views/homepage.jsp" class="nav-link">Home</a>
                        </li>
                        <li class="nav-item"><a href="${pageContext.request.contextPath}/ProductController" class="nav-link">Products</a>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>



                        <%

                            String lastName = "";
                            if (session.getAttribute("id") != null) {
                                int id = Integer.parseInt(session.getAttribute("id").toString());
                                Customer obj = new CustomerDAO().getCustomer(id);

                                String[] name = obj.getcName().split(" ");

                                lastName = name[name.length - 1];
                            }
//param.id == -1  || empty param.id

                        %>


                        <c:if test="${empty id}">
                            <li class="nav-item btn btn-outline-secondary btn-sm"><a href="${pageContext.request.contextPath}/views/login.jsp" class="nav-link">
                                    Login
                                </a>
                            </li> 
                        </c:if>
                        <c:if test="${not empty id}">

                            <%
                                HashMap<Integer , Integer> hm = new HashMap<>();
                                if(request.getSession().getAttribute("mapShoppingCart") != null){
                                    hm = (HashMap<Integer, Integer>) request.getSession().getAttribute("mapShoppingCart");
                                }
                            %>
                            
                            <li class="nav-item"><a href="${pageContext.request.contextPath}/views/shopping-cart.jsp" class="nav-link"> <i
                                        class="fa fa-shopping-cart fa-2x"><span class="num-cart">[<%= hm.size() %>]</span></i>
                                </a></li>
                            <li class="nav-item"><a href="${pageContext.request.contextPath}/views/profileUser.jsp" class="nav-link"> 
                                    <i
                                        class="fa fa-user-o fa-2x"></i>
                                </a></li>
                            <li class="nav-item text-center text-secondary">Hello , <%= lastName%><a href="${pageContext.request.contextPath}/logoutController" class="nav-link">Logout</a></li>
                            </c:if>


                    </ul>
                </div>
            </div>
        </nav>


</html>