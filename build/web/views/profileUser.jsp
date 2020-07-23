<%-- 
    Document   : profileUser.jsp
    Created on : Jul 20, 2020, 8:33:28 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.Node.DAO.CustomerDAO"%>
<%@page import="com.Node.Entity.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <title>JSP Page</title>
        <style>
            body{
                background: -webkit-linear-gradient(left, #3931af, #00c6ff);
            }
            .emp-profile{
                padding: 3%;
                margin-top: 8%;
                margin-bottom: 3%;
                border-radius: 0.5rem;
                background: #fff;
            }
            .profile-img{
                text-align: center;
            }
            .profile-img img{
                width: 70%;
                height: 100%;
            }
            .profile-img .file {
                position: relative;
                overflow: hidden;
                margin-top: -20%;
                width: 70%;
                border: none;
                border-radius: 0;
                font-size: 15px;
                background: #2129b8;
            }
            .profile-img .file input {
                position: absolute;
                opacity: 0;
                right: 0;
                top: 0;
            }

            .profile-head h5{
                color: #0062cc;
            }
            .profile-edit-btn{
                border: none;
                border-radius: 1.5rem;
                width: 70%;
                padding: 2%;
                font-weight: 600;
                color: #6c757d;
                cursor: pointer;
            }
            .proile-rating{
                font-size: 40px;
                color: #818182;
                margin-top: 5%;
                margin-left: 20%;
            }

            .profile-head .nav-tabs{
                margin-bottom:5%;
            }
            .profile-head .nav-tabs .nav-link{
                font-weight:600;
                border: none;
            }
            .profile-head .nav-tabs .nav-link.active{
                border: none;
                border-bottom:2px solid #0062cc;
            }

            .profile-tab label{
                font-weight: 600;
            }
            .profile-tab p{
                font-weight: 600;
                color: #0062cc;
            }

            .btn-group{
                margin : 20px 0 ;
                margin-left: 20%;
                border: none;
                border-radius: 1.5rem;
                width: 58%;
                font-weight: 600;
                color: #eee;
                cursor: pointer;
                font-size: 15px;
            }

        </style>
    </head>
    <body>

        <%

            Customer c = null;
            if (request.getSession().getAttribute("id") != null) {
                int id = Integer.parseInt(request.getSession().getAttribute("id").toString());
                c = new CustomerDAO().getCustomer(id);
            }
             String hiddenPhone = null;
            try{
                  hiddenPhone = c.getcPhone().replaceAll(c.getcPhone().substring(0, 7), "********");
            }catch(Exception e){
                hiddenPhone = c.getcPhone();
            }
           
            pageContext.setAttribute("hiddenPhone", hiddenPhone);
            pageContext.setAttribute("customer", c);


        %>

        <jsp:include page="header.jsp"/>

        <div class="container emp-profile">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>
                            <div class="file btn btn-lg btn-primary">
                                Change Photo
                                <input type="file" name="file"/>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="profile-head">

                            <h5>
                                ${customer.cName}
                            </h5>
                            <h1 class="proile-rating">Information</h1>

                        </div>
                    </div>
                    <div class="col-md-2">
                        <a href="editProfile.jsp" class="profile-edit-btn btn ">Edit Profile </a>
                        
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <button class="btn btn-dark px-4 rounded-pill btn-group" type="button" onclick="window.location.href = 'historybill.jsp'">Transaction history</button>
                        <button class="btn btn-dark px-4 rounded-pill btn-group" type="button" onclick="window.location.href = 'changepassword.jsp'">Change Password</button>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User Id:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>${customer.user}</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Gender:</label>
                                    </div>
                                    <c:if test="${customer.cGender == 0 }">
                                        <div class="col-md-6">
                                            <p>Male</p>
                                        </div>
                                    </c:if>
                                    <c:if test="${customer.cGender == 1 }">
                                        <div class="col-md-6">
                                            <p>Female</p>
                                        </div>
                                    </c:if>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Date of birth: </label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= new SimpleDateFormat("dd-MM-yyyy").format(c.getcDob())%></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>${customer.cEmail}</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Phone:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>${hiddenPhone}</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Description:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>${customer.cDescription}</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Address:</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p>${customer.cAddress}</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </form>           
        </div>
    </body>
</html>
