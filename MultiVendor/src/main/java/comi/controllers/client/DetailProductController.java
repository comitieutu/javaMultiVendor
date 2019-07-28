package comi.controllers.client;

import comi.entities.Product;
import comi.entities.Productdetail;
import comi.services.CategoryService;
import comi.services.ProductDetailService;
import comi.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;

@Controller
@RequestMapping("product/")
public class DetailProductController implements ServletContextAware {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	private ServletContext servletContext;

	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("product", this.productService.find(id));
        modelMap.put("relatedProducts", productService.findAll());
		return "client.product.detailProduct";
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
