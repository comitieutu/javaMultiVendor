package comi.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
public class Bank {
    private int id;
    private String bankaccount;
    private String name;
    private String department;
    private int vendorid;
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
    @Column(name = "bankaccount", nullable = false, length = 250)
    public String getBankaccount() {
        return bankaccount;
    }

    public void setBankaccount(String bankaccount) {
        this.bankaccount = bankaccount;
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
    @Column(name = "department", nullable = false, length = 250)
    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
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
        Bank bank = (Bank) o;
        return id == bank.id &&
                vendorid == bank.vendorid &&
                Objects.equals(bankaccount, bank.bankaccount) &&
                Objects.equals(name, bank.name) &&
                Objects.equals(department, bank.department);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, bankaccount, name, department, vendorid);
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
