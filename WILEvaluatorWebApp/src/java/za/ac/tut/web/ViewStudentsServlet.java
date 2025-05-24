package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
public class ViewStudentsServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Student> studList = sfl.findAllStudents();
        request.setAttribute("studList", studList);
        
        RequestDispatcher disp = request.getRequestDispatcher("viewstudents_outcome.jsp");
        disp.forward(request, response);
    }
}
