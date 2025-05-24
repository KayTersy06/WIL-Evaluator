<%-- 
    Document   : editmarks
    Created on : 21 May 2025, 9:31:25 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Student Page</title>
    </head>
    <body>
        <h1>Find Student</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please fill in the form to find a student
        </p>
        <form action="FindEditStudentServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td>
                        <input type="text" name="id" required="">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="FIND">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
