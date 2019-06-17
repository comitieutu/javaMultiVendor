package comi.controllers.admin;

import java.util.HashMap;
import java.util.Iterator;
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
import comi.services.CategoryService;

@Controller
@RequestMapping("admin/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("categories", categoryService.findAll());
		return "admin.category.index";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String create(ModelMap modelMap) {
		modelMap.put("category", new Category());
		Map<Integer, String> masters = new HashMap<Integer, String>();
		List<Category> categories = this.categoryService.findMaster();
		for (Category category : categories) {
			masters.put(category.getId(), category.getName());
		}
		modelMap.put("masters", masters);
		return "admin.category.create";
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String create(@ModelAttribute("category") Category category) {
		categoryService.save(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") int id, ModelMap modelMap) {		
		modelMap.put("category", categoryService.find(id));
		return "admin.category.update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("category") Category category) {
		categoryService.save(category);
		return "redirect:/admin/category";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, ModelMap modelMap){
		modelMap.put("id", id);
		return "admin.category.delete";
	}

	@RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") int id){
		categoryService.delete(id);
		return "redirect:/admin/category";
	}
	
}
