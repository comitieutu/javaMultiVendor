package comi.controllers.client;

import comi.entities.Personinfo;
import comi.services.CategoryService;
import comi.services.PersonInfoService;
import comi.services.ProductService;

import javax.validation.Valid;

import comi.viewmodels.UserRegisterViewModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
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

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;


@Controller
@RequestMapping("")
public class HomeController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserValidator userValidator;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private PersonInfoService personInfoService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		Sort.by(Sort.Direction.DESC, "id");
		modelMap.put("products", productService.findAll());
		modelMap.put("categories", this.categoryService.findAll());
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
		modelMap.put("user", new UserRegisterViewModel());
		return "client.register";
	}
	
	@RequestMapping(value="signup", method = RequestMethod.POST)
	public String signup(@ModelAttribute("user") @Valid UserRegisterViewModel user, BindingResult bindingResult) throws  Exception{
		this.userValidator.validate(user, bindingResult);
		if (bindingResult.hasErrors()) {
			return "client.register";
		} else {
			User userDto = new User();
			userDto.setEnable(true);
			userDto.setPassword(user.getPassword());
			userDto.setEmail(user.getEmail());
			userDto.setUsername(user.getUsername());
			userDto = this.userService.save(userDto);

			Personinfo personinfo = new Personinfo();
			personinfo.setUser(userDto);
			personinfo.setStreet(user.getStreet());
			personinfo.setGender(user.getGender() == 1 ? true : false);
			personinfo.setLastname(user.getLastname());
			personinfo.setFirstname(user.getFirstname());
			personinfo.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(user.getBirthday()));
			personinfo.setAddress(user.getAddress());

			personInfoService.save(personinfo);
			return "redirect:/login";
		}
	}
	
	@RequestMapping(value = "accessDenied", method = RequestMethod.GET)
	public String accessDenied() {
		return "client.accessDenied";
	}
}
