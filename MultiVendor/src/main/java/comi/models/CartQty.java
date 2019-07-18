package comi.models;

public class CartQty {
	
	private int quantity;
	private double subtotal;
	private double totalprice;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	public double getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(double totalprice) {
		this.totalprice = totalprice;
	}
	public CartQty() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartQty(int quantity, double subtotal, double totalprice) {
		super();
		this.quantity = quantity;
		this.subtotal = subtotal;
		this.totalprice = totalprice;
	}
	
	

}
