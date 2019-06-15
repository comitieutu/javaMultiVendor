package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Stateorprovince {
    private int id;
    private String countryid;
    private String code;
    private String name;
    private String type;
    private Collection<District> districtsById;
    private Country countryByCountryid;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "countryid", nullable = false, length = 10)
    public String getCountryid() {
        return countryid;
    }

    public void setCountryid(String countryid) {
        this.countryid = countryid;
    }

    @Basic
    @Column(name = "code", nullable = false, length = 50)
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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
    @Column(name = "type", nullable = false, length = 50)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Stateorprovince that = (Stateorprovince) o;
        return id == that.id &&
                Objects.equals(countryid, that.countryid) &&
                Objects.equals(code, that.code) &&
                Objects.equals(name, that.name) &&
                Objects.equals(type, that.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, countryid, code, name, type);
    }

    @OneToMany(mappedBy = "stateorprovinceByStateorprovinceid")
    public Collection<District> getDistrictsById() {
        return districtsById;
    }

    public void setDistrictsById(Collection<District> districtsById) {
        this.districtsById = districtsById;
    }

    @ManyToOne
    @JoinColumn(name = "countryid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Country getCountryByCountryid() {
        return countryByCountryid;
    }

    public void setCountryByCountryid(Country countryByCountryid) {
        this.countryByCountryid = countryByCountryid;
    }
}
