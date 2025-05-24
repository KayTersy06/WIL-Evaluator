<%-- 
    Document   : editwill_outcome
    Created on : 24 May 2025, 12:30:27 AM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Status Outcome Page</title>
    </head>
    <body>
        <h1>Edit Status Outcome</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, successfully edited status
        </p>
        <ul>
            <li><a href="coordinator.jsp">Coordinator Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
