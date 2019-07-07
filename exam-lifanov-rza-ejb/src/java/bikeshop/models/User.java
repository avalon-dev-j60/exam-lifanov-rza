
package bikeshop.models;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;


@NamedQueries({
    @NamedQuery(
            name = "find-user-by-email",
            query = "SELECT u from USERS u WHERE u.credentials.email = :email"),
    @NamedQuery(
            name = "find-admin-by-role",
            query = "SELECT u from USERS u WHERE u.roles.name = :name")
})

@Entity (name = "USERS")
public class User implements Serializable {
    
    @Id
    @GeneratedValue
    private long id;
    
    @Column
    private String name;
    
    @Column
    private String surname;
    
    @Column
    private int age;
    
    @Column
    private String image;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn
    private Roles roles;
    
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(nullable = false)
    private Credentials credentials;

    public User() {
    }

    public User(String name, String surname, Credentials credentials) {
        this.name = name;
        this.surname = surname;
        this.credentials = credentials;
    }

    public User(String name, Credentials credentials) {
        this.name = name;
        this.credentials = credentials;
    }

    
    // конструктор админа
    public User(String name, Roles roles, Credentials credentials) {
        this.name = name;
        this.roles = roles;
        this.credentials = credentials;
    }
    
    

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public Credentials getCredentials() {
        return credentials;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
    
    
}
