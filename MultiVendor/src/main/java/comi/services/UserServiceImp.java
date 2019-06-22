package comi.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import comi.entities.User;
import comi.entities.Userrole;
import comi.repositories.UserRepository;

@Service("userService")
public class UserServiceImp implements UserService{

	@Autowired
	private UserRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.find(username);
		if (user == null) {
			throw new UsernameNotFoundException("Username not found");
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
		for (Userrole userRole : user.getUserroles()) {
			grantedAuthorities.add(new SimpleGrantedAuthority(userRole.getRole().getName()));
		}
		return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), grantedAuthorities);
	}

}
