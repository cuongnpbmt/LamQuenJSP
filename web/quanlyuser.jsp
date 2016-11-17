<%-- 
    Document   : quanlyuser
    Created on : Oct 10, 2016, 3:34:42 PM
    Author     : Windows 10 Version 2
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.javaweb.model.Users"%>
<%@page import="com.javaweb.service.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý người dùng</title>
        <%@include file="includes/headtag.jsp" %>
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        
        <%
            UserService us = new UserService();
            ArrayList<Users> listUsers = null;
            
            listUsers = us.GetAllUsers();
            
        %>    
        <section class="container-fluid">
            <div class="panel panel-default">
                <!-- Default panel contents -->
                <div class="panel-heading">Panel heading</div>
                
                <!-- Table -->
                <table class="table">
                    <thead>
                        <tr>
                            <th>TT</th>                        
                            <th>Full name</th>                        
                            <th>Birthday</th>                        
                            <th>Gender</th>                        
                            <th>Email</th>                       
                            <th>Username</th>                       
                            <th>Password</th>
                            <th>Edit</th>                       
                            <th>Delete</th>
                        </tr>

                    </thead>
                    <tbody>
                        <% 
                        //Bắt đầu vòng lặp đổ dữ liệu
                        for(int i = 0; i < listUsers.size(); i++ ){
                            Users user = listUsers.get(i);
                        %>
                        <tr>
                            <td><%= i + 1%></td>                        
                            <td><%=user.getFullName() %></td>                        
                            <td><%=user.getBirthDay()%></td>                        
                            <td><%=user.getGender()%></td>                        
                            <td><%=user.getEmail()%></td>                       
                            <td><%=user.getUserName()%></td>                       
                            <td><%=user.getPwd()%></td>
                            <td>
                                <a href="edituser.jsp?userid=<%=user.getIdUser()%>">Edit</a> 
                            </td>
                            <td>
                                <input type="button" name="Del" value="Del" /> 
                            </td>
                        </tr>
                        <%
                        }
                        //Kết thúc của vòng lặp
                        %>
                    </tbody>

                </table>
                <ul class="pagination pager">
                    <li><a href="">Previous</a></li>
                    <li><a href="">1</a><li>
                    <li><a href="">2</a><li>	
                    <li><a href="">3</a><li>	
                    <li><a href="">Next</a></li>
                </ul>
            </div>
        </section>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
