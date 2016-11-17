<%-- 
    Document   : logout
    Created on : Sep 20, 2016, 5:11:29 PM
    Author     : Windows 10 Version 2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <section>
            <%
                if(session != null){
                    session.removeAttribute("fullname");
                    response.sendRedirect("login.jsp");
                }                   

            %>
            To login again <a href="login.jsp">click here</a>.
        </section>
    </body>
</html>
