<%-- 
    Document   : AdminGUI
    Created on : Jul 22, 2020, 9:13:11 PM
    Author     : BaoNQ
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.Node.DAO.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mylib.tld" prefix="mytag"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
              integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="admin.css">
        <style>
            <%@include file="/css/admin.css" %>
        </style>
        <title>Product List</title>
    </head>
    
<body class="d-flex flex-row">
    <nav class="navbar navbar-expand-lg navbar navbar-light flex-column p-4" style=" background-color: #100000; width: 15vw; height: 100vh;">
        <a class="navbar-brand text-white" href="#">Hi Admin</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse flex-column w-95" id="navbarNav">
            <ul class="navbar-nav flex-column w-100">
                <li class="nav-item p-3 pl-4">
                    <a class="nav-link text-white" href="AdminUI.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Product List</span>
                    </a>
                </li>
                    <li class="nav-item p-3 pl-4">
                        <a class="nav-link text-white" href="BillList.jsp">
                            <i class="fas fa-fw fa-tachometer-alt"></i>
                            <span>Bill List</span>
                        </a>
                    </li>
                    <li class="nav-item p-3 pl-4">
                        <a class="nav-link text-white" href="homepage.jsp">Log out</a>
                    </li>
                </ul>
            </div>
        </nav>
    <%
            if(request.getParameter("id")!=null){
                int id = Integer.parseInt(request.getParameter("id"));
                ProductDAO pDAO = new ProductDAO();
                int kq = pDAO.deleteProduct(id);
                if(kq!=0){
                    out.print("<script>alert('Xoa thanh cong');</script>");
                }
                else{
                    out.print("<script>alert('Xoa that bai');</script>");
                }
                out.print("<script>location.href='AdminUI.jsp'</script>");
            }
        %>
    <mytag:productTag database="jewellery" url="jdbc:mysql://localhost/" password="" user="root" />
    </body>

</html>
