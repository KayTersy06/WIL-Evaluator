<%-- 
    Document   : removestudent
    Created on : 21 May 2025, 9:32:08 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student Page</title>
    </head>
    <body>
        <h1>Remove Student</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please enter the student number of the student you want to remove:
        </p>
        <form action="RemoveStudentServlet.do" method="POST">
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
                        <input type="submit" value="REMOVE">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
