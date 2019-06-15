package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Delivery {
    private int id;
    private String name;
    private String description;
    private double price;
    private Collection<Saleorder> saleordersById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
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
    @Column(name = "price", nullable = false, precision = 0)
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Delivery delivery = (Delivery) o;
        return id == delivery.id &&
                Double.compare(delivery.price, price) == 0 &&
                Objects.equals(name, delivery.name) &&
                Objects.equals(description, delivery.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, description, price);
    }

    @OneToMany(mappedBy = "deliveryByDeliveryid")
    public Collection<Saleorder> getSaleordersById() {
        return saleordersById;
    }

    public void setSaleordersById(Collection<Saleorder> saleordersById) {
        this.saleordersById = saleordersById;
    }
}
