
package bikeshop.services;

import bikeshop.core.CRUD;
import bikeshop.models.User;
import javax.ejb.Local;


@Local 
public interface UserServiceLocal extends CRUD<User>{
    
    User find(String email);
    
    
}
