package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.entity.Module;

/**
 *
 * @author kayte
 */
@Stateless
public class ModuleFacade extends AbstractFacade<Module> implements ModuleFacadeLocal {

    @PersistenceContext(unitName = "WILEvaluatorEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ModuleFacade() {
        super(Module.class);
    }

    @Override
    public void createModule(Module module) {
        create(module);
    }

    @Override
    public void editModule(Module module) {
        edit(module);
    }

    @Override
    public void removeModule(Module module) {
        remove(module);
    }

    @Override
    public String determinOutcome(Integer mark) throws marksRangeException {
        String outcome = "";
        if((mark >= 0) && (mark <= 100)) {
            if(mark >= 50) {
                outcome = "Passed";
            } else {
                outcome = "Failed";
            }
        } else {
            throw new marksRangeException("Mark percentage should range betwwen 0 and 100");
        }
        return outcome;
    }
}
