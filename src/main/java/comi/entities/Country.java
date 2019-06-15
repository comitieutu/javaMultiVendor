package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Country {
    private String id;
    private String name;
    private String code3;
    private Collection<Stateorprovince> stateorprovincesById;

    @Id
    @Column(name = "id", nullable = false, length = 10)
    public String getId() {
        return id;
    }

    public void setId(String id) {
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
    @Column(name = "code3", nullable = false, length = 10)
    public String getCode3() {
        return code3;
    }

    public void setCode3(String code3) {
        this.code3 = code3;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Country country = (Country) o;
        return Objects.equals(id, country.id) &&
                Objects.equals(name, country.name) &&
                Objects.equals(code3, country.code3);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, code3);
    }

    @OneToMany(mappedBy = "countryByCountryid")
    public Collection<Stateorprovince> getStateorprovincesById() {
        return stateorprovincesById;
    }

    public void setStateorprovincesById(Collection<Stateorprovince> stateorprovincesById) {
        this.stateorprovincesById = stateorprovincesById;
    }
}
