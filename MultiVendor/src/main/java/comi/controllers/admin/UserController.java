package comi.controllers.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.ServletContextAware;


import comi.entities.Role;
import comi.entities.User;

import comi.entities.Userrole;

import comi.services.RoleService;
import comi.services.UserRoleService;
import comi.services.UserService;

@Controller
@RequestMapping("admin/user")
public class UserController implements ServletContextAware {
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private UserRoleService userRoleService;
	private ServletContext servletContext;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("users", userService.findAll());
		modelMap.put("roles", roleService.findAll());
		return "admin.user.index";
	}
	@RequestMapping(value = "userprofile/{id}", method = RequestMethod.GET)
	public String userprofile(@PathVariable("id") int userid, ModelMap modelMap) {		
		
		modelMap.put("user", userService.find(userid));		
		modelMap.put("roles", roleService.findAll());				
		modelMap.put("userroles", this.userRoleService.findAll());
		return "admin.user.userprofile";
	}
	
	
	
	
	@RequestMapping(value = "userprofile", method = RequestMethod.POST)
	public String userprofile(@ModelAttribute("user") User user,@ModelAttribute("role") Role role) {
		userService.save(user);
		roleService.save(role);
		
		return "redirect:/admin/user";
	}
//	@RequestMapping(value = "userprofile/{id}", method = RequestMethod.GET)
	//public String userprofilerole(@PathVariable("id") int id, ModelMap modelMap) {		
	//	modelMap.put("role", userService.find(id));
	//	modelMap.put("userroles", this.userRoleService.findAll());
		//return "admin.user.userprofile";
//	}
	
	//@RequestMapping(value = "updaterole", method = RequestMethod.GET)
	//public String updaterole(ModelMap modelMap) {
	//modelMap.put("role", new Role());
	//	Map<Integer, String> masters = new HashMap<Integer, String>();
		//List<Role> roles = this.roleService.findMaster();
		//for (Role role : roles) {
		//	masters.put(role.getId(), role.getName());
		//}
		//modelMap.put("masters", masters);
		//return "admin.user.userprofile";
	//}
	
	

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
		
	}

}
