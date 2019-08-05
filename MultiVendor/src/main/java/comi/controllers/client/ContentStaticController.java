package comi.controllers.client;

import comi.services.CategoryService;
import comi.services.ContentstaticService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("static")
public class ContentStaticController {

	@Autowired
	private ContentstaticService contentstaticService;

	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "{code}", method = RequestMethod.GET)
	public String index(@PathVariable("code") String code, ModelMap modelMap) {
		modelMap.put("contentstatic", contentstaticService.find(code));
		modelMap.put("categories", categoryService.findAll());
		return "client.static.index";
	}

}
