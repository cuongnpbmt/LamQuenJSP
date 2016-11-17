<%-- 
    Document   : index
    Created on : Sep 19, 2016, 3:36:06 PM
    Author     : Windows 10 Version 2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Làm quen với JSP page</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        <section class="container text-center text-danger">
            <% Date dt = new Date(); %>
            <span>Bây giờ là: <%= dt.toString() %></span>
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
