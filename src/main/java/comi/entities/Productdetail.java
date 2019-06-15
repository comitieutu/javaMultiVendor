package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Productdetail {
    private int id;
    private int productid;
    private int photo;
    private int description;
    private Product productByProductid;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "productid", nullable = false)
    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    @Basic
    @Column(name = "photo", nullable = false)
    public int getPhoto() {
        return photo;
    }

    public void setPhoto(int photo) {
        this.photo = photo;
    }

    @Basic
    @Column(name = "description", nullable = false)
    public int getDescription() {
        return description;
    }

    public void setDescription(int description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Productdetail that = (Productdetail) o;
        return id == that.id &&
                productid == that.productid &&
                photo == that.photo &&
                description == that.description;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, productid, photo, description);
    }

    @ManyToOne
    @JoinColumn(name = "productid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Product getProductByProductid() {
        return productByProductid;
    }

    public void setProductByProductid(Product productByProductid) {
        this.productByProductid = productByProductid;
    }
}
