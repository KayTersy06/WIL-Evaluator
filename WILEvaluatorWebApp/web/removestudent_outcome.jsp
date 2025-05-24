<%-- 
    Document   : removestudent_outcome
    Created on : 22 May 2025, 12:54:01 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Outcome Page</title>
    </head>
    <body>
        <h1>Remove Student Outcome</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, you have successfully removed the student:
        </p>
        <ul>
            <li><a href="lecturer.jsp">Lecturer Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>
    </body>
</html>
