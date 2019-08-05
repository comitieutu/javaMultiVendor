package comi.controllers.admin;

import comi.entities.Contentstatic;
import comi.services.CategoryService;
import comi.services.ContentstaticService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("admin/static")
public class StaticController {

	@Autowired
	private ContentstaticService contentstaticService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("statics", contentstaticService.findAll());
		return "admin.static.index";
	}

	@RequestMapping(value = "update/{code}", method = RequestMethod.GET)
	public String update(@PathVariable("code") String code, ModelMap modelMap) {
		modelMap.put("contentstatic", contentstaticService.find(code));
		return "admin.static.update";
	}
	
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(@ModelAttribute("contentstatic") Contentstatic contentstatic) {
		contentstaticService.save(contentstatic);
		return "redirect:/admin/static";
	}

}
