package comi.entities;

import javax.persistence.Column;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Objects;

public class UserrolePK implements Serializable {
    private int userid;
    private int roleid;

    @Column(name = "userid", nullable = false)
    @Id
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Column(name = "roleid", nullable = false)
    @Id
    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserrolePK that = (UserrolePK) o;
        return userid == that.userid &&
                roleid == that.roleid;
    }

    @Override
    public int hashCode() {
        return Objects.hash(userid, roleid);
    }
}
