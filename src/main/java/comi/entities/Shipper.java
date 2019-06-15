package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Shipper {
    private int id;
    private String company;
    private String contactname;
    private String contactphone;
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
    @Column(name = "company", nullable = false, length = 250)
    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    @Basic
    @Column(name = "contactname", nullable = false, length = 250)
    public String getContactname() {
        return contactname;
    }

    public void setContactname(String contactname) {
        this.contactname = contactname;
    }

    @Basic
    @Column(name = "contactphone", nullable = false, length = 15)
    public String getContactphone() {
        return contactphone;
    }

    public void setContactphone(String contactphone) {
        this.contactphone = contactphone;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Shipper shipper = (Shipper) o;
        return id == shipper.id &&
                Objects.equals(company, shipper.company) &&
                Objects.equals(contactname, shipper.contactname) &&
                Objects.equals(contactphone, shipper.contactphone);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, company, contactname, contactphone);
    }

    @OneToMany(mappedBy = "shipperByShipperid")
    public Collection<Saleorder> getSaleordersById() {
        return saleordersById;
    }

    public void setSaleordersById(Collection<Saleorder> saleordersById) {
        this.saleordersById = saleordersById;
    }
}
