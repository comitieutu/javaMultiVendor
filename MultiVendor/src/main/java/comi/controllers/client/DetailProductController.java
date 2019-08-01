package comi.controllers.client;

import comi.entities.Product;
import comi.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("product/")
public class DetailProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("product", this.productService.find(id));
		List<Product> products = (List<Product>) productService.findAll();
		products.removeIf(n -> (n.getId() == id));
        modelMap.put("relatedProducts", products);
		return "client.product.detailProduct";
	}
}
