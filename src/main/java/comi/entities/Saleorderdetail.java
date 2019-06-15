package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Saleorderdetail {
    private int id;
    private int saleorderid;
    private int productid;
    private int quantity;
    private double unitprice;
    private int discount;
    private Saleorder saleorderBySaleorderid;
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
    @Column(name = "saleorderid", nullable = false)
    public int getSaleorderid() {
        return saleorderid;
    }

    public void setSaleorderid(int saleorderid) {
        this.saleorderid = saleorderid;
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
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Basic
    @Column(name = "unitprice", nullable = false, precision = 0)
    public double getUnitprice() {
        return unitprice;
    }

    public void setUnitprice(double unitprice) {
        this.unitprice = unitprice;
    }

    @Basic
    @Column(name = "discount", nullable = false)
    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Saleorderdetail that = (Saleorderdetail) o;
        return id == that.id &&
                saleorderid == that.saleorderid &&
                productid == that.productid &&
                quantity == that.quantity &&
                Double.compare(that.unitprice, unitprice) == 0 &&
                discount == that.discount;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, saleorderid, productid, quantity, unitprice, discount);
    }

    @ManyToOne
    @JoinColumn(name = "saleorderid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Saleorder getSaleorderBySaleorderid() {
        return saleorderBySaleorderid;
    }

    public void setSaleorderBySaleorderid(Saleorder saleorderBySaleorderid) {
        this.saleorderBySaleorderid = saleorderBySaleorderid;
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
