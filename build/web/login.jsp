<%-- 
    Document   : login
    Created on : Oct 7, 2016, 3:32:01 PM
    Author     : Windows 10 Version 2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>

        <section class="container">
            <div class="row">
                <form action="LoginServlet" method="post">
                    <div class="form-group">
                        <label for="email">Email address:</label>
                        <input type="text" required="" name="youremail" class="form-control" id="email">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" required="" name="yourpwd" class="form-control" id="pwd">
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox" name="rememberMe" value="Y">Remember me</label>
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>

                    <%                            
                        if (session.getAttribute("errormsg") != null) {
                    %>
                    <div class="text-danger"><%=session.getAttribute("errormsg")%></div>
                    <%
                        }
                    %>
                </form>
            </div>
        </section>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
