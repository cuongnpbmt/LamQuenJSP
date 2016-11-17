<%-- 
    Document   : edituser
    Created on : Oct 10, 2016, 4:45:43 PM
    Author     : Windows 10 Version 2
--%>

<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chỉnh sửa thông tin người dùng</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <%
            UserService us = new UserService();
            Users user = null;
            String userId = request.getParameter("userid");
            user = us.GetUserByID(userId);
        %>
        <section class="container">
            <div class="row">
                <form action="EditUserServlet" method="post">
                    <input style="display: none;" name="iduser" value="<%=user.getIdUser()%>" />
                    <div class="form-group">
                        <label for="fullname">Full name:</label>
                        <input type="text" name="fullname" value="<%=user.getFullName()%>" class="form-control" required id="fullname">
                    </div>
                    <div class="form-group">
                        <label for="birthday">Birth day:</label>
                        <input type="date" name="birthday" value="Thị" class="form-control" id="birthday">
                    </div>
                    <div class="form-group">
                        <label for="gender">Gender:</label>
                        <input type="text" name="gender" value="Xinh" class="form-control" required id="gender">
                    </div>
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="email" name="email" value="xinhht@gmail.com" class="form-control" required id="email">
                    </div>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" name="username" value="xinhht" class="form-control" required id="username">
                    </div>
                    <div class="form-group">
                        <a href="/changepassword.jsp" class="text-info">Change password</a>
                    </div>

                    <button type="submit" class="btn btn-default">Update</button>
                    <div class="form-group">

                    </div>  

                </form>
            </div>
        </section>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
