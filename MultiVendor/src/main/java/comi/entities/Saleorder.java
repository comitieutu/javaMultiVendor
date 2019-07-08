package comi.entities;
// Generated Jun 15, 2019 5:07:07 PM by Hibernate Tools 5.1.7.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Saleorder generated by hbm2java
 */
@Entity
@Table(name = "saleorder", catalog = "multivendor")
public class Saleorder implements java.io.Serializable {

	private Integer id;
	private Delivery delivery;
	private Shipper shipper;
	private User user;
	private String ordernumber;
	private String status;
	private double deliveryprice;
	private double totalprice;
	private Date shipdate;
	private Payment payment;
	private Set<Saleorderdetail> saleorderdetails = new HashSet<Saleorderdetail>(0);
	private Set<Shipmentdetail> shipmentdetails = new HashSet<Shipmentdetail>(0);

	public Saleorder() {
	}

	public Saleorder(Delivery delivery, Shipper shipper, User user, String ordernumber, String status,
			double deliveryprice, double totalprice, Date shipdate, Payment payment) {
		this.delivery = delivery;
		this.shipper = shipper;
		this.user = user;
		this.ordernumber = ordernumber;
		this.status = status;
		this.deliveryprice = deliveryprice;
		this.totalprice = totalprice;
		this.shipdate = shipdate;
		this.payment = payment;
	}

	public Saleorder(Delivery delivery, Shipper shipper, User user, String ordernumber, String status,
			double deliveryprice, double totalprice, Date shipdate, Payment payment,
			Set<Saleorderdetail> saleorderdetails, Set<Shipmentdetail> shipmentdetails) {
		this.delivery = delivery;
		this.shipper = shipper;
		this.user = user;
		this.ordernumber = ordernumber;
		this.status = status;
		this.deliveryprice = deliveryprice;
		this.totalprice = totalprice;
		this.shipdate = shipdate;
		this.payment = payment;
		this.saleorderdetails = saleorderdetails;
		this.shipmentdetails = shipmentdetails;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "deliveryid", nullable = false)
	public Delivery getDelivery() {
		return this.delivery;
	}

	public void setDelivery(Delivery delivery) {
		this.delivery = delivery;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "shipperid", nullable = false)
	public Shipper getShipper() {
		return this.shipper;
	}

	public void setShipper(Shipper shipper) {
		this.shipper = shipper;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userid", nullable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "ordernumber", nullable = false, length = 50)
	public String getOrdernumber() {
		return this.ordernumber;
	}

	public void setOrdernumber(String ordernumber) {
		this.ordernumber = ordernumber;
	}

	@Column(name = "status", nullable = false, length = 50)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "deliveryprice", nullable = false, precision = 22, scale = 0)
	public double getDeliveryprice() {
		return this.deliveryprice;
	}

	public void setDeliveryprice(double deliveryprice) {
		this.deliveryprice = deliveryprice;
	}

	@Column(name = "totalprice", nullable = false, precision = 22, scale = 0)
	public double getTotalprice() {
		return this.totalprice;
	}

	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "shipdate", nullable = false, length = 10)
	public Date getShipdate() {
		return this.shipdate;
	}

	public void setShipdate(Date shipdate) {
		this.shipdate = shipdate;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "paymentid", nullable = false)
	public Payment getPayment() {
		return this.payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "saleorder")
	public Set<Saleorderdetail> getSaleorderdetails() {
		return this.saleorderdetails;
	}

	public void setSaleorderdetails(Set<Saleorderdetail> saleorderdetails) {
		this.saleorderdetails = saleorderdetails;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "saleorder")
	public Set<Shipmentdetail> getShipmentdetails() {
		return this.shipmentdetails;
	}

	public void setShipmentdetails(Set<Shipmentdetail> shipmentdetails) {
		this.shipmentdetails = shipmentdetails;
	}

}
