package comi.services;

import org.springframework.security.core.userdetails.UserDetailsService;

import comi.entities.User;

public interface UserService extends UserDetailsService {
	
	public User save(User user);
	public User getByUsername(String username);

}
