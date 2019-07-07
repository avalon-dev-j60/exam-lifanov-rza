
package bikeshop.models;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;

@NamedQueries({
//    @NamedQuery(
//            name = "find-goods-by-type",
//            query = "SELECT g from GOODS g WHERE g.type = :type"),
    @NamedQuery(
            name = "find-goods-by-name",
            query = "SELECT g from GOODS g WHERE g.name = :name")
})

@Entity(name = "GOODS")
public class Goods implements Serializable {
    
    @Id
    @GeneratedValue
    private long id;
    
    @Column(nullable = false)
    private String type;
    
    @Column(nullable = false)
    private String name;
    
//    @Column(nullable = false)
    private int cost;
    
//    @Column(nullable = false)
    private int amount;
    
//    @Column(nullable = false)
    private String description;
    
    private String imagePath;

    public Goods() {
    }

    public Goods(String type, String name) {
        this.type = type;
        this.name = name;
    }
    

    
    
    public Goods(String type, String name, int cost, int amount, String description, String imagePath) {
        this.type = type;
        this.name = name;
        this.cost = cost;
        this.amount = amount;
        this.description = description;
        this.imagePath = imagePath;
    }

    public Goods(String type, String name, int cost, int amount, String description) {
        this.type = type;
        this.name = name;
        this.cost = cost;
        this.amount = amount;
        this.description = description;
    }
    
    

    public long getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public String getName() {
        return name;
    }

    public int getCost() {
        return cost;
    }

    public int getAmount() {
        return amount;
    }

    public String getDescription() {
        return description;
    }

    public String getImagePath() {
        return imagePath;
    }
    
    public void setType(String type) {
        this.type = type;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    
    
}
