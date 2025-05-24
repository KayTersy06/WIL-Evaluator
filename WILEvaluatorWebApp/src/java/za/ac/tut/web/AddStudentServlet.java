package za.ac.tut.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.ModuleFacadeLocal;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Module;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
public class AddStudentServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;
    @EJB ModuleFacadeLocal mfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            //student data
            Long id = Long.parseLong(request.getParameter("id"));
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String dateStr = request.getParameter("year");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
            Date date = sdf.parse(dateStr);
            
            //module data
            List<Module> module = new ArrayList<>();
            Student student = new Student();
            
            String sub1Name = request.getParameter("sub1Name");
            String sub1Code = request.getParameter("sub1Code");
            Integer sub1Mark = Integer.parseInt(request.getParameter("sub1Mark"));
            String outcome1 = mfl.determinOutcome(sub1Mark);
            Module module1 = new Module();
            module1.setSubjectName(sub1Name);
            module1.setSubjectCode(sub1Code);
            module1.setFinalMark(sub1Mark);
            module1.setOutcome(outcome1);
            
            String sub2Name = request.getParameter("sub2Name");
            String sub2Code = request.getParameter("sub2Code");
            Integer sub2Mark = Integer.parseInt(request.getParameter("sub2Mark"));
            String outcome2 = mfl.determinOutcome(sub2Mark);
            Module module2 = new Module();
            module2.setSubjectName(sub2Name);
            module2.setSubjectCode(sub2Code);
            module2.setFinalMark(sub2Mark);
            module2.setOutcome(outcome2);
            
            String sub3Name = request.getParameter("sub3Name");
            String sub3Code = request.getParameter("sub3Code");
            Integer sub3Mark = Integer.parseInt(request.getParameter("sub3Mark"));
            String outcome3 = mfl.determinOutcome(sub3Mark);
            Module module3 = new Module();
            module3.setSubjectName(sub3Name);
            module3.setSubjectCode(sub3Code);
            module3.setFinalMark(sub3Mark);
            module3.setOutcome(outcome3);
            
            String sub4Name = request.getParameter("sub4Name");
            String sub4Code = request.getParameter("sub4Code");
            Integer sub4Mark = Integer.parseInt(request.getParameter("sub4Mark"));
            String outcome4 = mfl.determinOutcome(sub4Mark);
            Module module4 = new Module();
            module4.setSubjectName(sub4Name);
            module4.setSubjectCode(sub4Code);
            module4.setFinalMark(sub4Mark);
            module4.setOutcome(outcome4);
            
            module.add(module1);
            module.add(module2);
            module.add(module3);
            module.add(module4);
            
            student.setId(id);
            student.setName(name);
            student.setSurname(surname);
            student.setYearOfEnrollment(date);
            student.setModules(module);
            student.setStatus("Pending");//default status
            student.setCreationDate(new Date());
            
            sfl.createStudent(student);
            
            RequestDispatcher disp = request.getRequestDispatcher("addstudent_outcome.jsp");
            disp.forward(request, response);
            
        } catch (ParseException ex) {
            Logger.getLogger(AddStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
