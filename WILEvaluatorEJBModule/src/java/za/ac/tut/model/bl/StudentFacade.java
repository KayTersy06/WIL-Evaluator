/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "WILEvaluatorEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public void createStudent(Student student) {
        create(student);
    }

    @Override
    public void editStudent(Student student) {
        edit(student);
    }

    @Override
    public void removeStudent(Student student) {
        remove(student);
    }

    @Override
    public List<Student> viewStudentsByStatus(String status) {
        Query query = em.createQuery("SELECT s FROM Student s WHERE s.status = ?1");
        query.setParameter(1, status);
        List<Student> studOutcm = query.getResultList();
        return studOutcm;
    }

    @Override
    public List<Student> findAllStudents() {
        return findAll();
    }
    
}
