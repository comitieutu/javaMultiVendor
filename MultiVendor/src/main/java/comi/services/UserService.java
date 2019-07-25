package comi.services;

import org.springframework.security.core.userdetails.UserDetailsService;


import comi.entities.User;

public interface UserService extends UserDetailsService {
	public Iterable<User> findAll();
	public User find(int id);
	public User save(User user);
	public void delete(int id);

}
