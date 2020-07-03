<%--
    Document   : login
    Created on : Jul 3, 2020, 4:23:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
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
            <%@include file="/css/login.css" %>
        </style>
    </head>
    <body>
        <div class="container-fluid bg-form">
            <div class="row">
                <div class="col-md-4 mx-auto form-container">
                    <h1 class="font-weight-bold  text-light" style="text-transform: uppercase">Login</h1>
                    <form action="${pageContext.request.contextPath}/LoginController" method="POST">
                        <div class="form-group">
                            <label for="formGroupExampleInput" class="text-light" style="font-size: 18px">User</label>
                            <input type="text" class="form-control" id="formGroupExampleInput" name="user" placeholder="User name" required >
                        </div>
                        <div class="form-group">
                            <label for="formGroupExampleInput2" class="text-light" style="font-size: 18px">Password</label>
                            <input type="password" class="form-control" id="formGroupExampleInput2" name="pass" placeholder="Password" required>
                        </div>
                        <div class="control-text ">
                            <a href="#" class="text-dark"> Don't have account ? create one ! </a>
                        </div>
                        <button type="submit" class="btn btn-success  btn-lg btn-control" name="btnSubmit"> Enter </button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
