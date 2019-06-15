package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Supplier {
    private int id;
    private String name;
    private String taxnumber;
    private String type;
    private String description;
    private int userid;
    private Collection<Bank> banksById;
    private Supplier supplierByUserid;
    private Collection<Supplier> suppliersById;
    private Collection<Warehouse> warehousesById;

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
    @Column(name = "taxnumber", nullable = false, length = 50)
    public String getTaxnumber() {
        return taxnumber;
    }

    public void setTaxnumber(String taxnumber) {
        this.taxnumber = taxnumber;
    }

    @Basic
    @Column(name = "type", nullable = false, length = 50)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Supplier supplier = (Supplier) o;
        return id == supplier.id &&
                userid == supplier.userid &&
                Objects.equals(name, supplier.name) &&
                Objects.equals(taxnumber, supplier.taxnumber) &&
                Objects.equals(type, supplier.type) &&
                Objects.equals(description, supplier.description);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, taxnumber, type, description, userid);
    }

    @OneToMany(mappedBy = "supplierByVendorid")
    public Collection<Bank> getBanksById() {
        return banksById;
    }

    public void setBanksById(Collection<Bank> banksById) {
        this.banksById = banksById;
    }

    @ManyToOne
    @JoinColumn(name = "userid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Supplier getSupplierByUserid() {
        return supplierByUserid;
    }

    public void setSupplierByUserid(Supplier supplierByUserid) {
        this.supplierByUserid = supplierByUserid;
    }

    @OneToMany(mappedBy = "supplierByUserid")
    public Collection<Supplier> getSuppliersById() {
        return suppliersById;
    }

    public void setSuppliersById(Collection<Supplier> suppliersById) {
        this.suppliersById = suppliersById;
    }

    @OneToMany(mappedBy = "supplierByVendorid")
    public Collection<Warehouse> getWarehousesById() {
        return warehousesById;
    }

    public void setWarehousesById(Collection<Warehouse> warehousesById) {
        this.warehousesById = warehousesById;
    }
}
