package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
@Local
public interface StudentFacadeLocal {

    void createStudent(Student student);
    void editStudent(Student student);
    void removeStudent(Student student);
    Student find(Object id);
    List<Student> viewStudentsByStatus(String grading);

    List<Student> findAllStudents();

    List<Student> findRange(int[] range);

    int count();
    
}
