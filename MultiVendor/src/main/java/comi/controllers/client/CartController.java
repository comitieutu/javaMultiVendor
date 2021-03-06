package comi.controllers.client;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import comi.services.ProductService;
import comi.viewmodels.Item;

@Controller
@RequestMapping("cart")
public class CartController {
	
	@Autowired
	private ProductService productService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		session.setAttribute("cart", cart);
		double carttotal = 0;
		for (Item item : cart) {
			carttotal += item.getProduct().getUnitprice() * item.getQuantity();
		}
		modelMap.put("carttotal", carttotal);
		return "client.cart";
	}
	
	@RequestMapping(value = "buy", method = RequestMethod.GET)
	public String buy(@RequestParam("id") int id, @RequestParam("qty") int qty, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(productService.find(id), qty));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = this.exists(id, cart);
			if (index == -1) {
				cart.add(new Item(productService.find(id), qty));
			} else {
				int quantity = cart.get(index).getQuantity() + qty;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/cart";
	}

	@RequestMapping(value = "remove/{id}", method = RequestMethod.GET)
	public String remove(@PathVariable("id") int id, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = this.exists(id, cart);
		cart.remove(index);
		session.setAttribute("cart", cart);
		return "redirect:/cart";
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
