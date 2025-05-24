<%-- 
    Document   : coordinator
    Created on : 21 May 2025, 9:22:44 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coordinator Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please select your option to continue
        </p>
        <ul>
            <li><a href="editwill.jsp">Edit Will Status</a></li><br>
            <li><a href="menu.jsp">Menu</a></li><br>
            <li><a href="LogoutServlet.do">LOGOUT</a></li>
        </ul>
    </body>
</html>
