package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Shipmentdetail {
    private int id;
    private int saleid;
    private String firstname;
    private String lastname;
    private String phone;
    private String email;
    private String shiptoaddress;
    private String shiptostreet;
    private int districtid;
    private Saleorder saleorderBySaleid;
    private District districtByDistrictid;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "saleid", nullable = false)
    public int getSaleid() {
        return saleid;
    }

    public void setSaleid(int saleid) {
        this.saleid = saleid;
    }

    @Basic
    @Column(name = "firstname", nullable = false, length = 250)
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    @Basic
    @Column(name = "lastname", nullable = false, length = 250)
    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    @Basic
    @Column(name = "phone", nullable = false, length = 15)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 150)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "shiptoaddress", nullable = false, length = 250)
    public String getShiptoaddress() {
        return shiptoaddress;
    }

    public void setShiptoaddress(String shiptoaddress) {
        this.shiptoaddress = shiptoaddress;
    }

    @Basic
    @Column(name = "shiptostreet", nullable = false, length = 250)
    public String getShiptostreet() {
        return shiptostreet;
    }

    public void setShiptostreet(String shiptostreet) {
        this.shiptostreet = shiptostreet;
    }

    @Basic
    @Column(name = "districtid", nullable = false)
    public int getDistrictid() {
        return districtid;
    }

    public void setDistrictid(int districtid) {
        this.districtid = districtid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Shipmentdetail that = (Shipmentdetail) o;
        return id == that.id &&
                saleid == that.saleid &&
                districtid == that.districtid &&
                Objects.equals(firstname, that.firstname) &&
                Objects.equals(lastname, that.lastname) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(email, that.email) &&
                Objects.equals(shiptoaddress, that.shiptoaddress) &&
                Objects.equals(shiptostreet, that.shiptostreet);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, saleid, firstname, lastname, phone, email, shiptoaddress, shiptostreet, districtid);
    }

    @ManyToOne
    @JoinColumn(name = "saleid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Saleorder getSaleorderBySaleid() {
        return saleorderBySaleid;
    }

    public void setSaleorderBySaleid(Saleorder saleorderBySaleid) {
        this.saleorderBySaleid = saleorderBySaleid;
    }

    @ManyToOne
    @JoinColumn(name = "districtid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public District getDistrictByDistrictid() {
        return districtByDistrictid;
    }

    public void setDistrictByDistrictid(District districtByDistrictid) {
        this.districtByDistrictid = districtByDistrictid;
    }
}
