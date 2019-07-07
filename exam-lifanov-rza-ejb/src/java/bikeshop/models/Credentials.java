
package bikeshop.models;

import bikeshop.util.EncryptHelper;
import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Credentials implements Serializable{
    
    @Id
    @Column(nullable = false)
    private String email;
    
    @Column(nullable = false)
    private String password;
    
    protected Credentials() {
    }
    
    public Credentials(String email, String password) {
        this.email = email;
        this.password = EncryptHelper.md5(password);
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public int hashCode() {
        return Objects.hash(email, password);
    }

    public boolean equals(Credentials credentials) {
        return credentials.email.equals(email) &&
               credentials.password.equals(password);
    }

    @Override
    public boolean equals(Object object) {
        if(object == this) {
            return true;
        }
        if (object instanceof Credentials) {
            return equals((Credentials)object);
        }
        return false;
    }
    
    
    
    
    
    
}
