package za.ac.tut.model.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import za.ac.tut.model.entity.Module;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-24T14:07:24")
@StaticMetamodel(Student.class)
public class Student_ { 

    public static volatile SingularAttribute<Student, String> surname;
    public static volatile SingularAttribute<Student, String> name;
    public static volatile SingularAttribute<Student, Long> id;
    public static volatile SingularAttribute<Student, Date> yearOfEnrollment;
    public static volatile SingularAttribute<Student, Date> creationDate;
    public static volatile ListAttribute<Student, Module> modules;
    public static volatile SingularAttribute<Student, String> status;

}