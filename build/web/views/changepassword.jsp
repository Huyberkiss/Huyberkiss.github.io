<%-- 
    Document   : changpassword
    Created on : Jul 23, 2020, 3:41:44 PM
    Author     : Admin
--%>

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
                background: -webkit-linear-gradient(left, #1931af, #20c6ef);
            }
        </style>
    </head>
    <body>
        
        <%
            if(request.getParameter("isChanged") != null){
                if(request.getParameter("isChanged").equals("true")){
                    out.print("<script> alert('Changed success , you will be logout') </script>");
                    request.getSession().invalidate();
                    response.sendRedirect("/ProjectPRJ/views/homepage.jsp");
                }else{
                    out.print("<script> alert('Wrong type') </script>");
                }
            }
        
        %>
        
        <div class="col-md-6 offset-md-3">
            <span class="anchor" id="formChangePassword"></span>
            <hr class="mb-5">

            <!-- form card change password -->
            <div class="card card-outline-secondary">
                <div class="card-header">
                    <h3 class="mb-0">Change Password</h3>
                </div>
                <div class="card-body">
                    <form class="form" action="/ProjectPRJ/ChangePassController" method="POST">
                        <div class="form-group">
                            <label for="inputPasswordOld">Current Password</label>
                            <input type="password" class="form-control" name="oldPass" id="inputPasswordOld" required="">
                        </div>
                        <div class="form-group">
                            <label for="inputPasswordNew">New Password</label>
                            <input type="password" class="form-control" id="inputPasswordNew" name="newPass" required="">
                            <span class="form-text small text-muted">
                                The password must be 8-20 characters, and must <em>not</em> contain spaces.
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="inputPasswordNewVerify">Verify</label>
                            <input type="password" class="form-control" id="inputPasswordNewVerify" name="reNewPass" required="">
                            <span class="form-text small text-muted">
                                To confirm, type the new password again.
                            </span>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-success btn-lg float-right">Save</button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /form card change password -->

    </body>
</html>
