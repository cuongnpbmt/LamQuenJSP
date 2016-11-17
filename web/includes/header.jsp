<%-- 
    Document   : footer
    Created on : Sep 19, 2016, 4:37:23 PM
    Author     : CuongNP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="container-fluid">
    <div class="row">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">WebSiteName</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li><a href="intro.jsp">Introduce</a></li>
                    <li><a href="quanlyuser.jsp">User management</a></li>
                    <li><a href="#">Page 2</a></li> 
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <% 
                        if(session.getAttribute("fullname") != null){
                            %>
                            <li><a href="#">Xin chào: <%=session.getAttribute("fullname") %></a></li>
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                            <%
                        }else{
                            %>
                            <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                            <%
                        }
                    %>
                    
                </ul>
            </div>
        </nav>
    </div>
    <div class="row">
        <img style="max-height: 40px;" class="img-responsive" src="images/banner.jpg" alt=""/>
    </div>
</header>