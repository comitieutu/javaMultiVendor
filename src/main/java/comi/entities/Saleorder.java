package comi.entities;

import javax.persistence.*;
import java.sql.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
public class Saleorder {
    private int id;
    private String ordernumber;
    private int userid;
    private String status;
    private double deliveryprice;
    private double totalprice;
    private Date shipdate;
    private int shipperid;
    private int paymentid;
    private int deliveryid;
    private User userByUserid;
    private Shipper shipperByShipperid;
    private Delivery deliveryByDeliveryid;
    private Collection<Saleorderdetail> saleorderdetailsById;
    private Collection<Shipmentdetail> shipmentdetailsById;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "ordernumber", nullable = false, length = 50)
    public String getOrdernumber() {
        return ordernumber;
    }

    public void setOrdernumber(String ordernumber) {
        this.ordernumber = ordernumber;
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
    @Column(name = "status", nullable = false, length = 50)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "deliveryprice", nullable = false, precision = 0)
    public double getDeliveryprice() {
        return deliveryprice;
    }

    public void setDeliveryprice(double deliveryprice) {
        this.deliveryprice = deliveryprice;
    }

    @Basic
    @Column(name = "totalprice", nullable = false, precision = 0)
    public double getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(double totalprice) {
        this.totalprice = totalprice;
    }

    @Basic
    @Column(name = "shipdate", nullable = false)
    public Date getShipdate() {
        return shipdate;
    }

    public void setShipdate(Date shipdate) {
        this.shipdate = shipdate;
    }

    @Basic
    @Column(name = "shipperid", nullable = false)
    public int getShipperid() {
        return shipperid;
    }

    public void setShipperid(int shipperid) {
        this.shipperid = shipperid;
    }

    @Basic
    @Column(name = "paymentid", nullable = false)
    public int getPaymentid() {
        return paymentid;
    }

    public void setPaymentid(int paymentid) {
        this.paymentid = paymentid;
    }

    @Basic
    @Column(name = "deliveryid", nullable = false)
    public int getDeliveryid() {
        return deliveryid;
    }

    public void setDeliveryid(int deliveryid) {
        this.deliveryid = deliveryid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Saleorder saleorder = (Saleorder) o;
        return id == saleorder.id &&
                userid == saleorder.userid &&
                Double.compare(saleorder.deliveryprice, deliveryprice) == 0 &&
                Double.compare(saleorder.totalprice, totalprice) == 0 &&
                shipperid == saleorder.shipperid &&
                paymentid == saleorder.paymentid &&
                deliveryid == saleorder.deliveryid &&
                Objects.equals(ordernumber, saleorder.ordernumber) &&
                Objects.equals(status, saleorder.status) &&
                Objects.equals(shipdate, saleorder.shipdate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, ordernumber, userid, status, deliveryprice, totalprice, shipdate, shipperid, paymentid, deliveryid);
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
    @JoinColumn(name = "shipperid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Shipper getShipperByShipperid() {
        return shipperByShipperid;
    }

    public void setShipperByShipperid(Shipper shipperByShipperid) {
        this.shipperByShipperid = shipperByShipperid;
    }

    @ManyToOne
    @JoinColumn(name = "deliveryid", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    public Delivery getDeliveryByDeliveryid() {
        return deliveryByDeliveryid;
    }

    public void setDeliveryByDeliveryid(Delivery deliveryByDeliveryid) {
        this.deliveryByDeliveryid = deliveryByDeliveryid;
    }

    @OneToMany(mappedBy = "saleorderBySaleorderid")
    public Collection<Saleorderdetail> getSaleorderdetailsById() {
        return saleorderdetailsById;
    }

    public void setSaleorderdetailsById(Collection<Saleorderdetail> saleorderdetailsById) {
        this.saleorderdetailsById = saleorderdetailsById;
    }

    @OneToMany(mappedBy = "saleorderBySaleid")
    public Collection<Shipmentdetail> getShipmentdetailsById() {
        return shipmentdetailsById;
    }

    public void setShipmentdetailsById(Collection<Shipmentdetail> shipmentdetailsById) {
        this.shipmentdetailsById = shipmentdetailsById;
    }
}
