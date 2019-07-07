
package bikeshop.services;

import bikeshop.core.AbstractService;
import bikeshop.models.Goods;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

@Stateless
public class GoodsService extends AbstractService<Goods> {
    
    @PersistenceContext(unitName = "bikeshop-PU")
    EntityManager em;

    public GoodsService() {
        super(Goods.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

//    @Override
    public Goods find(String name) {
        try {
            return em.createNamedQuery("find-goods-by-name", Goods.class)
                    .setParameter("name", name).getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
}
    
    

