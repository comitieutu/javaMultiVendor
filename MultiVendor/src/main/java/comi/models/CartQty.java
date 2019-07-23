package comi.models;

public class CartQty {
	
	private double subtotal;
	private double totalprice;

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
	public CartQty(double subtotal, double totalprice) {
		super();
		this.subtotal = subtotal;
		this.totalprice = totalprice;
	}
	
	

}
