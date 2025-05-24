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
public class ViewByOutcomeServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String otc = request.getParameter("outcome");
        
        List<Student> studList = sfl.viewStudentsByStatus(otc);
        request.setAttribute("studList", studList);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_outcome.jsp");
        disp.forward(request, response);
    }
}
