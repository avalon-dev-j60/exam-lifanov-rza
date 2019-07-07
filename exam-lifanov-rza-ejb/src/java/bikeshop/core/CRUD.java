
package bikeshop.core;

import javax.ejb.Local;

@Local
public interface CRUD<E> {
    
    void create(E entity);
    
    void update(E entity);

    void delete(E entity);
}