package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Comment {
    private int id;
    private int userid;
    private int productid;
    private String context;
    private User userByUserid;
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
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
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
    @Column(name = "context", nullable = false, length = 250)
    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Comment comment = (Comment) o;
        return id == comment.id &&
                userid == comment.userid &&
                productid == comment.productid &&
                Objects.equals(context, comment.context);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userid, productid, context);
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
    @JoinColumn(name = "productid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Product getProductByProductid() {
        return productByProductid;
    }

    public void setProductByProductid(Product productByProductid) {
        this.productByProductid = productByProductid;
    }
}
