package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Warehouse {
    private int id;
    private String name;
    private String address;
    private String street;
    private int districtid;
    private int vendorid;
    private District districtByDistrictid;
    private Supplier supplierByVendorid;

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
    @Column(name = "address", nullable = false, length = 250)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "street", nullable = false, length = 250)
    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    @Basic
    @Column(name = "districtid", nullable = false)
    public int getDistrictid() {
        return districtid;
    }

    public void setDistrictid(int districtid) {
        this.districtid = districtid;
    }

    @Basic
    @Column(name = "vendorid", nullable = false)
    public int getVendorid() {
        return vendorid;
    }

    public void setVendorid(int vendorid) {
        this.vendorid = vendorid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Warehouse warehouse = (Warehouse) o;
        return id == warehouse.id &&
                districtid == warehouse.districtid &&
                vendorid == warehouse.vendorid &&
                Objects.equals(name, warehouse.name) &&
                Objects.equals(address, warehouse.address) &&
                Objects.equals(street, warehouse.street);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, address, street, districtid, vendorid);
    }

    @ManyToOne
    @JoinColumn(name = "districtid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public District getDistrictByDistrictid() {
        return districtByDistrictid;
    }

    public void setDistrictByDistrictid(District districtByDistrictid) {
        this.districtByDistrictid = districtByDistrictid;
    }

    @ManyToOne
    @JoinColumn(name = "vendorid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Supplier getSupplierByVendorid() {
        return supplierByVendorid;
    }

    public void setSupplierByVendorid(Supplier supplierByVendorid) {
        this.supplierByVendorid = supplierByVendorid;
    }
}
