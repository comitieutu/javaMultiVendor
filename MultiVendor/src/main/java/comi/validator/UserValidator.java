package comi.validator;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import comi.entities.User;
import comi.services.UserService;

@Component("userValidator")
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
		String username = user.getUsername();
		List<User> users = this.userService.findAll();
		for (User u : users) {
			if (u.getUsername().equalsIgnoreCase(username)) {
				errors.rejectValue("username", "user.username.exists");
				break;
			}
		}
	}

}
