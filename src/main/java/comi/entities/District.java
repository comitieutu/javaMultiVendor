package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class District {
    private int id;
    private int stateorprovinceid;
    private String name;
    private String type;
    private String location;
    private Stateorprovince stateorprovinceByStateorprovinceid;
    private Collection<Personinfo> personinfosById;
    private Collection<Shipmentdetail> shipmentdetailsById;
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
    @Column(name = "stateorprovinceid", nullable = false)
    public int getStateorprovinceid() {
        return stateorprovinceid;
    }

    public void setStateorprovinceid(int stateorprovinceid) {
        this.stateorprovinceid = stateorprovinceid;
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
    @Column(name = "type", nullable = false, length = 250)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "location", nullable = false, length = 250)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        District district = (District) o;
        return id == district.id &&
                stateorprovinceid == district.stateorprovinceid &&
                Objects.equals(name, district.name) &&
                Objects.equals(type, district.type) &&
                Objects.equals(location, district.location);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, stateorprovinceid, name, type, location);
    }

    @ManyToOne
    @JoinColumn(name = "stateorprovinceid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Stateorprovince getStateorprovinceByStateorprovinceid() {
        return stateorprovinceByStateorprovinceid;
    }

    public void setStateorprovinceByStateorprovinceid(Stateorprovince stateorprovinceByStateorprovinceid) {
        this.stateorprovinceByStateorprovinceid = stateorprovinceByStateorprovinceid;
    }

    @OneToMany(mappedBy = "districtByDistrictid")
    public Collection<Personinfo> getPersoninfosById() {
        return personinfosById;
    }

    public void setPersoninfosById(Collection<Personinfo> personinfosById) {
        this.personinfosById = personinfosById;
    }

    @OneToMany(mappedBy = "districtByDistrictid")
    public Collection<Shipmentdetail> getShipmentdetailsById() {
        return shipmentdetailsById;
    }

    public void setShipmentdetailsById(Collection<Shipmentdetail> shipmentdetailsById) {
        this.shipmentdetailsById = shipmentdetailsById;
    }

    @OneToMany(mappedBy = "districtByDistrictid")
    public Collection<Warehouse> getWarehousesById() {
        return warehousesById;
    }

    public void setWarehousesById(Collection<Warehouse> warehousesById) {
        this.warehousesById = warehousesById;
    }
}
