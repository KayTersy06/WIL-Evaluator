<%-- 
    Document   : menu
    Created on : 21 May 2025, 9:19:05 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Page</title>
    </head>
    <body>
        <h1>Menu</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            Hi my name is <%=comp%>, please select your role to continue
        </p>
        <ul>
            <li><a href="LecturerServlet.do">Lecturer</a></li>
            <li><a href="coordinator.jsp">WIL Coordinator</a></li><br>
            <li><a href="LogoutServlet.do">LOGOUT</a></li>
        </ul>
    </body>
</html>
