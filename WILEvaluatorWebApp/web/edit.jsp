<%-- 
    Document   : edit
    Created on : 23 May 2025, 11:57:49 PM
    Author     : kayte
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Status Page</title>
    </head>
    <body>
        <h1>Edit Status</h1>
        <%
            String comp = application.getInitParameter("comp_name");
            Student stud = (Student)request.getAttribute("stud");
            Long id = stud.getId();
            String name = stud.getName();
            String surname = stud.getSurname();
            String status = stud.getStatus();
            
            Date date = stud.getYearOfEnrollment();
            SimpleDateFormat sdf = new SimpleDateFormat("YYYY");
            String dateStr = sdf.format(date);
            
            //modules
            String mod1Name = stud.getModules().get(0).getSubjectName();
            String mod1Code = stud.getModules().get(0).getSubjectCode();
            Integer mod1Mark = stud.getModules().get(0).getFinalMark();
            String mod1Otc = stud.getModules().get(0).getOutcome();
            
            String mod2Name = stud.getModules().get(1).getSubjectName();
            String mod2Code = stud.getModules().get(1).getSubjectCode();
            Integer mod2Mark = stud.getModules().get(1).getFinalMark();
            String mod2Otc = stud.getModules().get(1).getOutcome();
            
            String mod3Name = stud.getModules().get(2).getSubjectName();
            String mod3Code = stud.getModules().get(2).getSubjectCode();
            Integer mod3Mark = stud.getModules().get(2).getFinalMark();
            String mod3Otc = stud.getModules().get(2).getOutcome();
            
            String mod4Name = stud.getModules().get(3).getSubjectName();
            String mod4Code = stud.getModules().get(3).getSubjectCode();
            Integer mod4Mark = stud.getModules().get(3).getFinalMark();
            String mod4Otc = stud.getModules().get(3).getOutcome();
        %>
        <p>
            <%=comp%> here again, you can edit the WIL Status of the student
        </p>
        <form action="EditStudentStatusServlet.do" method="POST">
            <table>
                <tr>
                    <td>Student Number:</td>
                    <td>
                        <input type="text" name="id" value="<%=id%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="name" value="<%=name%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Surname:</td>
                    <td>
                        <input type="text" name="surname" value="<%=surname%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Year enrolled:</td>
                    <td>
                        <input type="text" name="year" value="<%=dateStr%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Status:</td>
                    <td>
                        <select name="status">
                            <option value="Rejected">Rejected</option>
                            <option value="Approved">Approved</option>
                        </select><%=status%>
                    </td>
                </tr>
                <tr></tr>
                <tr>
                    <td>Module 1</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub1Name" value="<%=mod1Name%>" readonly="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub1Code" value="<%=mod1Code%>" readonly="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub1Mark" value="<%=mod1Mark%>" readonly="">
                    </td>
                    <td>Outcome</td>
                    <td>
                        <input type="text" name="mod1Otc" value="<%=mod1Otc%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Module 2</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub2Name" value="<%=mod2Name%>" readonly="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub2Code" value="<%=mod2Code%>" readonly="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub2Mark" value="<%=mod2Mark%>" readonly="">
                    </td>
                    <td>Outcome</td>
                    <td>
                        <input type="text" name="mod2Otc" value="<%=mod2Otc%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Module 3</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub3Name" value="<%=mod3Name%>" readonly="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub3Code" value="<%=mod3Code%>" readonly="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub3Mark" value="<%=mod3Mark%>" readonly="">
                    </td>
                    <td>Outcome</td>
                    <td>
                        <input type="text" name="mod3Otc" value="<%=mod3Otc%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td>Module 4</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td>
                        <input type="text" name="sub4Name" value="<%=mod4Name%>" readonly="">
                    </td>
                    <td>Subject Code:</td>
                    <td>
                        <input type="text" name="sub4Code" value="<%=mod4Code%>" readonly="">
                    </td>
                    <td>Final Mark:</td>
                    <td>
                        <input type="text" name="sub4Mark" value="<%=mod4Mark%>" readonly="">
                    </td>
                    <td>Outcome</td>
                    <td>
                        <input type="text" name="mod4Otc" value="<%=mod4Otc%>" readonly="">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="EDIT STATUS">
                    </td>
                </tr>
    </body>
</html>
