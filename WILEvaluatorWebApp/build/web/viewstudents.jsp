<%-- 
    Document   : viewstudents
    Created on : 21 May 2025, 9:31:51 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students Page</title>
    </head>
    <body>
        <h1>View Students</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please select the button below to retrieve all the students
        </p>
        <form action="ViewStudentsServlet.do" method="GET">
            <table>
                <tr>
                    <td>
                        <input type="submit" value="GET STUDENTS">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
