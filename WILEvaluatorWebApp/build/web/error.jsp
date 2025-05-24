<%-- 
    Document   : error
    Created on : 21 May 2025, 11:14:50 PM
    Author     : kayte
--%>

<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <h1>Error</h1>
        <%
            String excMsg = exception.getMessage();
        %>
        <p>
            <%=excMsg%>
        </p>
        <ul>
            <li><a href="menu.jsp">Menu</a></li>
        </ul>
    </body>
</html>
