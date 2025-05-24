<%-- 
    Document   : view
    Created on : 23 May 2025, 11:16:18 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students By Status Page</title>
    </head>
    <body>
        <h1>View Students By Status</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please select a category
        </p>
        <form action="ViewByOutcomeServlet.do" method="POST">
            <table>
                <tr>
                    <td>Outcome:</td>
                    <td>
                        <select name="outcome">
                            <option value="Pending">Pending</option>
                            <option value="Rejected">Reject</option>
                            <option value="Approved">Approved</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="SUBMIT">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
