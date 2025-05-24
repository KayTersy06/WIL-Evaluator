<%-- 
    Document   : addstudent
    Created on : 21 May 2025, 9:31:00 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <%
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, please fill in the form below to continue:
        </p>
        <form action="AddStudentServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td>
                        <input type="text" name="id" required="">
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="name" required="">
                    </td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td>
                        <input type="text" name="surname" required="">
                    </td>
                </tr>
                <tr>
                    <td>Year enrolled:</td>
                    <td>
                        <input type="text" name="year" placeholder="YYYY">
                    </td>
                </tr>
                <tr></tr>
                <tr>
                    <td>Module 1</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub1Name" required="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub1Code" required="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub1Mark" required="">
                    </td>
                </tr>
                <tr>
                    <td>Module 2</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub2Name" required="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub2Code" required="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub2Mark" required="">
                    </td>
                </tr>
                <tr>
                    <td>Module 3</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub3Name" required="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub3Code" required="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub3Mark" required="">
                    </td>
                </tr>
                <tr>
                    <td>Module 4</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub4Name" required="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub4Code" required="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub4Mark" required="">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="ADD STUDENT">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
