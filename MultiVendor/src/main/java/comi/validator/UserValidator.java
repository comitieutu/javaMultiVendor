package comi.validator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import comi.entities.User;
import comi.services.UserService;

public class UserValidator implements Validator {
	
	@Autowired
	private UserService userService;
	
	@Override
	public boolean supports(Class<?> arg0) {
		return User.class.equals(arg0);
	}

	@Override
	public void validate(Object object, Errors errors) {
		User user = (User) object;
		List<User> users = this.userService.findAll();
		if (users.contains(user)) {
			errors.rejectValue("username", "account.username.exists");
		}
	}

}
