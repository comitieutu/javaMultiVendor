package comi.entities;

import javax.persistence.*;
import java.util.Collection;
import java.util.Objects;

@Entity
public class User {
    private int id;
    private String username;
    private String email;
    private String password;
    private byte enable;
    private Collection<Comment> commentsById;
    private Collection<Personinfo> personinfosById;
    private Collection<Product> productsById;
    private Collection<Saleorder> saleordersById;
    private Collection<Userrole> userrolesById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "username", nullable = false, length = 50)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "email", nullable = false, length = 250)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password", nullable = false, length = 250)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "enable", nullable = false)
    public byte getEnable() {
        return enable;
    }

    public void setEnable(byte enable) {
        this.enable = enable;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id == user.id &&
                enable == user.enable &&
                Objects.equals(username, user.username) &&
                Objects.equals(email, user.email) &&
                Objects.equals(password, user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, username, email, password, enable);
    }

    @OneToMany(mappedBy = "userByUserid")
    public Collection<Comment> getCommentsById() {
        return commentsById;
    }

    public void setCommentsById(Collection<Comment> commentsById) {
        this.commentsById = commentsById;
    }

    @OneToMany(mappedBy = "userByUserid")
    public Collection<Personinfo> getPersoninfosById() {
        return personinfosById;
    }

    public void setPersoninfosById(Collection<Personinfo> personinfosById) {
        this.personinfosById = personinfosById;
    }

    @OneToMany(mappedBy = "userByUserId")
    public Collection<Product> getProductsById() {
        return productsById;
    }

    public void setProductsById(Collection<Product> productsById) {
        this.productsById = productsById;
    }

    @OneToMany(mappedBy = "userByUserid")
    public Collection<Saleorder> getSaleordersById() {
        return saleordersById;
    }

    public void setSaleordersById(Collection<Saleorder> saleordersById) {
        this.saleordersById = saleordersById;
    }

    @OneToMany(mappedBy = "userByUserid")
    public Collection<Userrole> getUserrolesById() {
        return userrolesById;
    }

    public void setUserrolesById(Collection<Userrole> userrolesById) {
        this.userrolesById = userrolesById;
    }
}
