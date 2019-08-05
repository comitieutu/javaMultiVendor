package comi.controllers.client;

import comi.entities.Category;
import comi.entities.Product;
import comi.services.CategoryService;
import comi.services.ProductService;
import comi.viewmodels.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("product/")
public class DetailProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "category/{id}", method = RequestMethod.GET)
	public String index(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("categoryInSearch", new Category());
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("category", categoryService.find(id));
		modelMap.put("productsByCategory", productService.findAllById(id));
		return "client.product.index";
	}

	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAll());
		modelMap.put("product", this.productService.find(id));
		List<Product> relatedProducts = (List<Product>) productService.findAll();
		relatedProducts.removeIf(n -> (n.getId() == id));
        modelMap.put("relatedProducts", relatedProducts);
		return "client.product.detailProduct";
	}

	@RequestMapping(value = "search", method = RequestMethod.GET)
	public String search(@RequestParam("categoryid") int categoryid, @RequestParam("keywork") String keywork, ModelMap modelMap) {
		modelMap.put("categoryInSearch", categoryService.find(categoryid));
		modelMap.put("keywork", keywork);
		modelMap.put("categories", categoryService.findAll());
		if(categoryid > 0 && !keywork.isEmpty()){
			modelMap.put("productsByCategory", this.productService.searchLike(keywork, categoryid));
		}
		return "client.product.index";
	}

}
