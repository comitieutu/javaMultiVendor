package comi.controllers.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import comi.entities.Category;
import comi.entities.Product;
import comi.services.CategoryService;
import comi.services.ProductService;

@Controller
@RequestMapping("admin/product")
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		return "admin.product.index";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(ModelMap modelMap) {
		modelMap.put("product", new Product());
		Map<Integer, String> categories = new HashMap<Integer, String>();
		for (Category category : this.categoryService.findAll()) {
			categories.put(category.getId(), category.getName());
		}
		modelMap.put("categories", categories);
		return "admin.product.create";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") int id, ModelMap modelMap) {		
		modelMap.put("product", productService.find(id));
		return "admin.product.update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/admin/product";
	}
	
}
