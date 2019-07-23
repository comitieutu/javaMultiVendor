package comi.configurations;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import comi.entities.Category;
import comi.services.CategoryService;
import comi.viewmodels.Item;

@Component( value = "dynamicMenuContext")
public class DynamicMenuContext {
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private HttpSession httpSession;
	
	public List<Category> getAllMasterCategories() {
		return (List<Category>) this.categoryService.findMaster();
	}
	
	public List<Category> getAllCategories() {
		return (List<Category>) this.categoryService.findAll();
	}
	
	public List<Item> getCart() {
		return (List<Item>) this.httpSession.getAttribute("cart");
	}
}
