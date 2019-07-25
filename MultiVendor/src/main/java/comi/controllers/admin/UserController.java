package comi.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import comi.entities.Product;
import comi.entities.User;
import comi.entities.Userrole;
import comi.entities.UserroleId;
import comi.services.UserRoleService;
import comi.services.UserService;

@Controller
@RequestMapping("admin/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private UserRoleService userRoleService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("users", userService.findAll());
		return "admin.user.index";
	}
	@RequestMapping(value = "userprofile/{id}", method = RequestMethod.GET)
	public String userprofile(@PathVariable("id") int id, ModelMap modelMap) {		
		modelMap.put("user", userService.find(id));
		modelMap.put("userroles", this.userRoleService.findAll());
		return "admin.user.userprofile";
	}
	
	@RequestMapping(value = "userprofile", method = RequestMethod.POST)
	public String userprofile(@ModelAttribute("user") User user) {
		userService.save(user);
		return "redirect:/admin/user";
	}

}
