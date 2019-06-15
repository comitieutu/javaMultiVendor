package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@IdClass(UserrolePK.class)
public class Userrole {
    private int userid;
    private int roleid;
    private byte enable;
    private User userByUserid;
    private Role roleByRoleid;

    @Id
    @Column(name = "userid", nullable = false)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Id
    @Column(name = "roleid", nullable = false)
    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
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
        Userrole userrole = (Userrole) o;
        return userid == userrole.userid &&
                roleid == userrole.roleid &&
                enable == userrole.enable;
    }

    @Override
    public int hashCode() {
        return Objects.hash(userid, roleid, enable);
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
    @JoinColumn(name = "roleid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Role getRoleByRoleid() {
        return roleByRoleid;
    }

    public void setRoleByRoleid(Role roleByRoleid) {
        this.roleByRoleid = roleByRoleid;
    }
}
