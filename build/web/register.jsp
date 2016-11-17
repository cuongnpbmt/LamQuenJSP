<%-- 
    Document   : register
    Created on : Sep 30, 2016, 4:58:32 PM
    Author     : Windows 10 Version 2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng ký thành viên</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>

        <%@include file="includes/header.jsp" %>
        <section class="container">
            <form action="RegisterServlet" method="post">
                <div class="form-group">
                    <label for="fullname">Full name</label>
                    <input type="text" name="fullname" class="form-control" required id="fullname">
                </div>
                <div class="form-group">
                    <label for="email">Email address:</label>
                    <input type="email" name="email" class="form-control" required id="email">
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" name="username" class="form-control" required id="username">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" name="pwd" class="form-control" required id="pwd">
                </div>
                <div class="form-group">
                    <label for="repwd">Retype Password:</label>
                    <input type="password" name="repwd" class="form-control" required id="repwd">
                </div>
                <div class="checkbox">
                    <label><input required="" type="checkbox" name="rememberMe" value="Y">Agree condition! </label>
                </div>
                <button type="submit" class="btn btn-default">Register</button>
                <div class="form-group">
                    <%
                        if(session.getAttribute("errormsg") != null){
                            %>
                            <label class="text-danger">
                                <%=session.getAttribute("errormsg")%>
                            </label>
                            <%
                                session.removeAttribute("errormsg");
                        }
                        %>
                </div>

            </form>            
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
