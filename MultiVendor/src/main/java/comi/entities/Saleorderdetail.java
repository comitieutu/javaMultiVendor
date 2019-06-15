package comi.entities;
// Generated Jun 15, 2019 5:07:07 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Saleorderdetail generated by hbm2java
 */
@Entity
@Table(name = "saleorderdetail", catalog = "multivendor")
public class Saleorderdetail implements java.io.Serializable {

	private Integer id;
	private Product product;
	private Saleorder saleorder;
	private int quantity;
	private double unitprice;
	private int discount;

	public Saleorderdetail() {
	}

	public Saleorderdetail(Product product, Saleorder saleorder, int quantity, double unitprice, int discount) {
		this.product = product;
		this.saleorder = saleorder;
		this.quantity = quantity;
		this.unitprice = unitprice;
		this.discount = discount;
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
	@JoinColumn(name = "productid", nullable = false)
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "saleorderid", nullable = false)
	public Saleorder getSaleorder() {
		return this.saleorder;
	}

	public void setSaleorder(Saleorder saleorder) {
		this.saleorder = saleorder;
	}

	@Column(name = "quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Column(name = "unitprice", nullable = false, precision = 22, scale = 0)
	public double getUnitprice() {
		return this.unitprice;
	}

	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}

	@Column(name = "discount", nullable = false)
	public int getDiscount() {
		return this.discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

}
