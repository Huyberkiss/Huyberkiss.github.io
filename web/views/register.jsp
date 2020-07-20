<%-- 
    Document   : register
    Created on : Jul 14, 2020, 9:00:18 PM
    Author     : BaoNQ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head> 
        <meta name="viewport" content="width=device-width, initial-scale=1">


        <!-- Website CSS style -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Website Font style -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

        <title>Register</title>
        <style>
            <%@include file="/css/register.css" %>
        </style>
    </head>

    <body>
        <div class="container">
            <div class="row main">
                <div class="main-login main-center">
                    <form method="post" action="${pageContext.request.contextPath}/RegisterController" onsubmit="return validation()">

                        <div class="form-group">
                            <label for="name" class="cols-sm-2 control-label">Your Name</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cName"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="name" id="name" autocomplete="OFF"  placeholder="Enter your Name here"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="dob" class="cols-sm-2 control-label">Your Birthday</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cDob"><i class="fa fa-gift fa" aria-hidden="true"></i></span>
                                    <input type="date" class="form-control" name="dob" id="dob" autocomplete="OFF"  placeholder="Enter your Birthday here"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="cols-sm-2 control-label">Your Phone</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cPhone"><i class="fa fa-phone fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="phone" id="phone" autocomplete="OFF"  placeholder="Enter your Phone here"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="gender" class="cols-sm-2 control-label">Your Gender</label>
                            <div class="cols-sm-10">
                                <div class="input-group"> 
                                    <span class="input-group-addon" id="cGender"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <select id="gender" name="gender" class="form-control" autocomplete="OFF">
                                        <option value="0">Male</option>
                                        <option value="1">Female</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="cols-sm-2 control-label">Your Email</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cEmail"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="email" id="email" autocomplete="OFF" placeholder="Enter your Email here"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="address" class="cols-sm-2 control-label">Your Address</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cAddress"><i class="fa fa-map fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="address" id="address"autocomplete="OFF"  placeholder="Enter your Address here"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="cols-sm-2 control-label">Username</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cUsername"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="username" id="username" autocomplete="OFF"  placeholder="Enter your Username here "/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="password" class="cols-sm-2 control-label">Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cPassword"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password here"/>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon" id="cConfirm"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password here"/>
                                </div>
                            </div>
                        </div>


                        <div class="form-group ">
                            <button type="submit" class="btn btn-primary btn-lg btn-block login-button" name="btnRegister"> Register </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
