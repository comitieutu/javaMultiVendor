package comi.controllers.client;

import comi.services.ProductService;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import comi.entities.User;
import comi.services.UserService;
import comi.validator.UserValidator;

@Controller
@RequestMapping("")
public class HomeController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
//	@Autowired
//	private UserValidator userValidator;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		modelMap.put("products", productService.findAll());
		return "client.index";
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error, ModelMap modelMap) {
		if (error != null) {
			modelMap.put("msg", "Username or password is incorrect");
		}
		return "client.login";
	}
	
	@RequestMapping(value="register", method = RequestMethod.GET)
	public String register(@RequestParam(value = "error", required = false) String error, ModelMap modelMap) {
		if (error != null) {
			modelMap.put("msg", "Username or password is incorrect");
		}
		modelMap.put("user", new User());
		return "client.register";
	}
	
	@RequestMapping(value="signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute("user") @Valid User user, BindingResult bindingResult) {
//		this.userValidator.validate(user, bindingResult);
//		if (bindingResult.hasErrors()) {
//			return "redirect:/register";
//		}
//		this.userService.save(user);
		return "redirect:/login";
	}
	
	@RequestMapping(value = "accessDenied", method = RequestMethod.GET)
	public String accessDenied() {
		return "client.accessDenied";
	}
}
