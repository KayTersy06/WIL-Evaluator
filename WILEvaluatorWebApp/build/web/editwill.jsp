<%-- 
    Document   : editwill
    Created on : 23 May 2025, 11:16:25 PM
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
        <form action="FindServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student number:</td>
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
