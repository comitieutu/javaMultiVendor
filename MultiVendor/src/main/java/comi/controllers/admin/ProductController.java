package comi.controllers.admin;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import comi.entities.Product;
import comi.entities.Productdetail;
import comi.services.CategoryService;
import comi.services.ProductDetailService;
import comi.services.ProductService;

@Controller
@RequestMapping("admin/product")
public class ProductController implements ServletContextAware {

	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductDetailService productDetailService;
	private ServletContext servletContext;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		return "admin.product.index";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(ModelMap modelMap) {
		modelMap.put("product", new Product());
		modelMap.put("categories", this.categoryService.findAll());
		return "admin.product.create";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@ModelAttribute("product") Product product, @RequestParam("files") MultipartFile[] files) {
		Productdetail productdetail;
		product = productService.save(product);
		for (MultipartFile file : files) {
			productdetail = new Productdetail();
			productdetail.setPhoto(saveFile(file));
			productdetail.setProduct(product);
			this.productDetailService.save(productdetail);
		}		
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") int id, ModelMap modelMap) {		
		modelMap.put("product", productService.find(id));
		modelMap.put("categories", this.categoryService.findAll());
		return "admin.product.update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("product") Product product) {
		productService.save(product);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.put("productdetails", this.productDetailService.findByProduct(id));
		return "admin.product.detail";
	}
	
	@RequestMapping(value = "detail", method = RequestMethod.POST)
	public String detail(HttpServletRequest request, @RequestParam("files") MultipartFile[] files) {
		int id = Integer.parseInt(request.getParameter("id"));
		Productdetail productdetail;
		for (MultipartFile file : files) {
			productdetail = new Productdetail();
			productdetail.setPhoto(saveFile(file));
			productdetail.setProduct(this.productService.find(id));
			this.productDetailService.save(productdetail);
		}
		return "redirect:/admin/product/detail/" + id;
	}
	
	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		this.productService.delete(id);
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "detail/delete/{id}", method = RequestMethod.GET)
	public String deleteDetail(@PathVariable("id") int id) {
		Productdetail detail = this.productDetailService.find(id);
		this.productDetailService.delete(id);
		return "redirect:/admin/product/detail/" + detail.getProduct().getId();
	}
	
	private String saveFile(MultipartFile multipartFile) {
		try {
			Path path = Paths.get(this.servletContext.getRealPath("/assets/images/" + multipartFile.getOriginalFilename()));
			Files.write(path, multipartFile.getBytes());
			return multipartFile.getOriginalFilename();
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}
}
