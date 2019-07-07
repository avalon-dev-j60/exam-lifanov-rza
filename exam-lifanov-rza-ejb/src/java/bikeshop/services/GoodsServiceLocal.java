
package bikeshop.services;

import bikeshop.core.CRUD;
import bikeshop.models.Goods;
import javax.ejb.Local;

@Local
public interface GoodsServiceLocal extends CRUD<Goods> {
    
    Goods find (String name);
    
}
