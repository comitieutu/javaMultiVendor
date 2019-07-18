package comi.controllers.client;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import comi.models.CartQty;
import comi.services.ProductService;
import comi.viewmodels.Item;

@RestController
@RequestMapping("api/cart")
public class CartRestController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "change/{id}/{qty}", method = RequestMethod.GET, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
	public ResponseEntity<CartQty> change(@PathVariable("id") int id, @PathVariable("qty") int qty, HttpSession session){
		try {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			int quantity = cart.get(index).getQuantity() + qty;
			cart.get(index).setQuantity(quantity);
			session.setAttribute("cart", cart);
			double subtotal = cart.get(index).getQuantity() * cart.get(index).getProduct().getUnitprice();
			double carttotal = 0;
			for (Item item : cart) {
				carttotal += item.getProduct().getUnitprice() * item.getQuantity();
			}
			return new ResponseEntity<CartQty>(new CartQty(quantity, subtotal, carttotal), HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<CartQty>(HttpStatus.BAD_REQUEST);
		}
	}
	
	private int exists(int id, List<Item> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProduct().getId() == id) {
				return i;
			}
		}
		return -1;
	}
	
}
