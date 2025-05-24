<%-- 
    Document   : editmarks_outcome
    Created on : 22 May 2025, 1:33:07 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Marks Outcome Page</title>
    </head>
    <body>
        <h1>Edit Marks Outcome</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, you have successfully edited the marks
        </p>
        <ul>
            <li><a href="lecturer.jsp">Lecturer Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
