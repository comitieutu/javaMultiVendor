package comi.entities;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
public class Personinfo {
    private int id;
    private int userid;
    private String firstname;
    private String lastname;
    private byte gender;
    private Date birthday;
    private String address;
    private String street;
    private int districtid;
    private User userByUserid;
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
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
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
    @Column(name = "gender", nullable = false)
    public byte getGender() {
        return gender;
    }

    public void setGender(byte gender) {
        this.gender = gender;
    }

    @Basic
    @Column(name = "birthday", nullable = false)
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Personinfo that = (Personinfo) o;
        return id == that.id &&
                userid == that.userid &&
                gender == that.gender &&
                districtid == that.districtid &&
                Objects.equals(firstname, that.firstname) &&
                Objects.equals(lastname, that.lastname) &&
                Objects.equals(birthday, that.birthday) &&
                Objects.equals(address, that.address) &&
                Objects.equals(street, that.street);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, firstname, lastname, gender, birthday, address, street, districtid);
    }

    @ManyToOne
    @JoinColumn(name = "userid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public User getUserByUserid() {
        return userByUserid;
    }

    public void setUserByUserid(User userByUserid) {
        this.userByUserid = userByUserid;
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
