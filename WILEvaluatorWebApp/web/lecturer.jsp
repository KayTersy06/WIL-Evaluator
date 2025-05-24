<%-- 
    Document   : lecturer
    Created on : 21 May 2025, 9:22:53 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lecturer Page</title>
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
            <li><a href="addstudent.jsp">Add Student</a></li>
            <li><a href="editmarks.jsp">Edit Student Marks</a></li>
            <li><a href="viewstudents.jsp">View All Students</a></li>
            <li><a href="removestudent.jsp">Remove a Student</a></li>
            <li><a href="view.jsp">View Students According To Status</a></li><br>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="LogoutServlet.do">LOGOUT</a></li>
        </ul>
    </body>
</html>
