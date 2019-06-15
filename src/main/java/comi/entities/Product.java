package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Product {
    private int id;
    private String name;
    private String description;
    private int userId;
    private int quantity;
    private double unitprice;
    private String brand;
    private int categoryid;
    private Collection<Comment> commentsById;
    private User userByUserId;
    private Category categoryByCategoryid;
    private Collection<Productdetail> productdetailsById;
    private Collection<Saleorderdetail> saleorderdetailsById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 250)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description", nullable = false, length = 250)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "userId", nullable = false)
    public int getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "unitprice", nullable = false, precision = 0)
    public double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(Double unitprice) {
        this.unitprice = unitprice;
    }

    public void setUnitprice(double unitprice) {
        this.unitprice = unitprice;
    }

    @Basic
    @Column(name = "brand", nullable = false, length = 250)
    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Basic
    @Column(name = "categoryid", nullable = false)
    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return id == product.id &&
                userId == product.userId &&
                quantity == product.quantity &&
                Double.compare(product.unitprice, unitprice) == 0 &&
                categoryid == product.categoryid &&
                Objects.equals(name, product.name) &&
                Objects.equals(description, product.description) &&
                Objects.equals(brand, product.brand);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, description, userId, quantity, unitprice, brand, categoryid);
    }

    @OneToMany(mappedBy = "productByProductid")
    public Collection<Comment> getCommentsById() {
        return commentsById;
    }

    public void setCommentsById(Collection<Comment> commentsById) {
        this.commentsById = commentsById;
    }

    @ManyToOne
    @JoinColumn(name = "userId", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public User getUserByUserId() {
        return userByUserId;
    }

    public void setUserByUserId(User userByUserId) {
        this.userByUserId = userByUserId;
    }

    @ManyToOne
    @JoinColumn(name = "categoryid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Category getCategoryByCategoryid() {
        return categoryByCategoryid;
    }

    public void setCategoryByCategoryid(Category categoryByCategoryid) {
        this.categoryByCategoryid = categoryByCategoryid;
    }

    @OneToMany(mappedBy = "productByProductid")
    public Collection<Productdetail> getProductdetailsById() {
        return productdetailsById;
    }

    public void setProductdetailsById(Collection<Productdetail> productdetailsById) {
        this.productdetailsById = productdetailsById;
    }

    @OneToMany(mappedBy = "productByProductid")
    public Collection<Saleorderdetail> getSaleorderdetailsById() {
        return saleorderdetailsById;
    }

    public void setSaleorderdetailsById(Collection<Saleorderdetail> saleorderdetailsById) {
        this.saleorderdetailsById = saleorderdetailsById;
    }
}
