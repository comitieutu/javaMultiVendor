package comi.services;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetailsService;

import comi.entities.User;

public interface UserService extends UserDetailsService {
	
	public User save(User user);
	public List<User> findAll();

}
