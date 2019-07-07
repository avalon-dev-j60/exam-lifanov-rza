
package bikeshop.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "ROLES")
public class Roles implements Serializable {
    
    @Id
    private int id;
    
    @Column
    private String name;

    public Roles() {
    }

    
    
    public Roles(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
