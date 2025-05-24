package za.ac.tut.web;

import java.io.IOException;
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
public class FindServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        
        Student stud = sfl.find(id);
        request.setAttribute("stud", stud);
        
        RequestDispatcher disp = request.getRequestDispatcher("edit.jsp");
        disp.forward(request, response);
    }
}
