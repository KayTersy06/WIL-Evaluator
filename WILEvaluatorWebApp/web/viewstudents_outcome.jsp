<%-- 
    Document   : viewstudents_outcome
    Created on : 22 May 2025, 11:23:51 AM
    Author     : kayte
--%>

<%@page import="za.ac.tut.model.entity.Module"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.model.entity.Student"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Students Outcome Page</title>
    </head>
    <body>
        <h1>View Students Outcome</h1>
        <%
            List<Student> studList = (List<Student>)request.getAttribute("studList");
            String comp = application.getInitParameter("comp_name");
        %>
        <p>
            <%=comp%> here again, below is the list of all students
        </p>
        <table>
            <%
                for(int i = 0; i<studList.size(); i++) {
                    Student stud = studList.get(i);
                    Long id = stud.getId();
                    String name = stud.getName();
                    String surname = stud.getSurname();
                    Date date = stud.getYearOfEnrollment();
                    String status = stud.getStatus();
                    //modules
                    String mod1Name = stud.getModules().get(0).getSubjectName();
                    String mod1Code = stud.getModules().get(0).getSubjectCode();
                    Integer mod1Mark = stud.getModules().get(0).getFinalMark();
                    String mod1Otcm = stud.getModules().get(0).getOutcome();
                    
                    String mod2Name = stud.getModules().get(1).getSubjectName();
                    String mod2Code = stud.getModules().get(1).getSubjectCode();
                    Integer mod2Mark = stud.getModules().get(1).getFinalMark();
                    String mod2Otcm = stud.getModules().get(1).getOutcome();
                    
                    String mod3Name = stud.getModules().get(2).getSubjectName();
                    String mod3Code = stud.getModules().get(2).getSubjectCode();
                    Integer mod3Mark = stud.getModules().get(2).getFinalMark();
                    String mod3Otcm = stud.getModules().get(2).getOutcome();
                    
                    String mod4Name = stud.getModules().get(3).getSubjectName();
                    String mod4Code = stud.getModules().get(3).getSubjectCode();
                    Integer mod4Mark = stud.getModules().get(3).getFinalMark();
                    String mod4Otcm = stud.getModules().get(3).getOutcome();
                    %>
                    <tr>
                        <td>Student number:</td>
                        <td>
                            <%=id%>
                        </td>
                    </tr>
                    <tr>
                        <td>Name:</td>
                        <td>
                            <%=name%>
                        </td>
                    </tr>
                    <tr>
                        <td>Surname:</td>
                        <td>
                            <%=surname%>
                        </td>
                    </tr>
                    <tr>
                        <td>WIL Status:</td>
                        <td>
                            <%=status%>
                        </td>
                    </tr>
                    <tr>
                        <td>Module 1</td>
                    </tr>
                    <tr>
                        <td>Subject Name:</td>
                        <td>
                            <%=mod1Name%>
                        </td>
                        <td>Subject Code:</td>
                        <td>
                            <%=mod1Code%>
                        </td>
                        <td>Final Mark:</td>
                        <td>
                            <%=mod1Mark%>
                        </td>
                        <td>Outcome: </td>
                        <td>
                            <%=mod1Otcm%>
                        </td>
                    </tr>
                    <tr>
                        <td>Module 2</td>
                    </tr>
                    <tr>
                        <td>Subject Name:</td>
                        <td>
                            <%=mod2Name%>
                        </td>
                        <td>Subject Code:</td>
                        <td>
                            <%=mod2Code%>
                        </td>
                        <td>Final Mark:</td>
                        <td>
                            <%=mod2Mark%>
                        </td>
                        <td>Outcome: </td>
                        <td>
                            <%=mod2Otcm%>
                        </td>
                    </tr>
                    <tr>
                        <td>Module 3</td>
                    </tr>
                    <tr>
                        <td>Subject Name:</td>
                        <td>
                            <%=mod3Name%>
                        </td>
                        <td>Subject Code:</td>
                        <td>
                            <%=mod3Code%>
                        </td>
                        <td>Final Mark:</td>
                        <td>
                            <%=mod3Mark%>
                        </td>
                        <td>Outcome: </td>
                        <td>
                            <%=mod3Otcm%>
                        </td>
                    </tr>
                    <tr>
                        <td>Module 4</td>
                    </tr>
                    <tr>
                        <td>Subject Name:</td>
                        <td>
                            <%=mod4Name%>
                        </td>
                        <td>Subject Code:</td>
                        <td>
                            <%=mod4Code%>
                        </td>
                        <td>Final Mark:</td>
                        <td>
                            <%=mod4Mark%>
                        </td>
                        <td>Outcome: </td>
                        <td>
                            <%=mod4Otcm%>
                        </td>
                    </tr>
                    <%
                }
            %>
        </table>
        <ul>
            <li><a href="lecturer.jsp">Lecturer Menu</a></li>
            <li><a href="LogoutServlet.do">Logout</a></li>
        </ul>   
    </body>
</html>
