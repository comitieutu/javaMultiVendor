package comi.controllers.client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("auth")
public class AuthController {

	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login(@RequestParam(value = "error", required = false) String error, ModelMap modelMap) {
		if (error != null) {
			modelMap.put("msg", "Username or password is incorrect");
		}
		return "client.login";
	}
}
