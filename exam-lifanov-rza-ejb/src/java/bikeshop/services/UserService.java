
package bikeshop.services;

import bikeshop.core.AbstractService;
import bikeshop.models.User;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

@Stateless
public class UserService extends AbstractService<User> implements UserServiceLocal{

    @PersistenceContext(unitName = "bikeshop-PU")
    EntityManager em;
    
    public UserService() {
        super(User.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    @Override
    public User find(String email) {
        try {
            return em.createNamedQuery("find-user-by-email", User.class)
                    .setParameter("email", email).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
    
}
