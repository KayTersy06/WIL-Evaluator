package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Module;

/**
 *
 * @author kayte
 */
@Local
public interface ModuleFacadeLocal {

    void createModule(Module module);
    void editModule(Module module);
    void removeModule(Module module);
    Module find(Object id);
    List<Module> findAll();
    List<Module> findRange(int[] range);
    int count();
    String determinOutcome(Integer mark)throws marksRangeException;
    
}
