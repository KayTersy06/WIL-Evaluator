package za.ac.tut.model.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;

/**
 *
 * @author kayte
 */
@Entity
public class Student implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private Long id;
    @Column(name = "FIRSTNAME", nullable = false)
    private String name;
    @Column(name = "LASTNAME", nullable = false)
    private String surname;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date yearOfEnrollment;
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST, orphanRemoval = true)
    @JoinColumn(name = "fk")
    private List<Module> modules;
    private String status;
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    private Date creationDate;

    public Student() {
    }

    public Student(Long id, String name, String surname, Date yearOfEnrollment, List<Module> modules, String status, Date creationDate) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.yearOfEnrollment = yearOfEnrollment;
        this.modules = modules;
        this.status = status;
        this.creationDate = creationDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getYearOfEnrollment() {
        return yearOfEnrollment;
    }

    public void setYearOfEnrollment(Date yearOfEnrollment) {
        this.yearOfEnrollment = yearOfEnrollment;
    }

    public List<Module> getModules() {
        return modules;
    }

    public void setModules(List<Module> modules) {
        this.modules = modules;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Student)) {
            return false;
        }
        Student other = (Student) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.model.entity.Student[ id=" + id + " ]";
    }
    
}
