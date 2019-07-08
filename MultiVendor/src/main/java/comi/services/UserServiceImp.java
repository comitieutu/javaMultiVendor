package comi.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;

import comi.entities.Role;
import comi.entities.User;
import comi.entities.Userrole;
import comi.entities.UserroleId;
import comi.repositories.RoleRepository;
import comi.repositories.UserRepository;
import comi.repositories.UserRoleRepository;

@Service("userService")
public class UserServiceImp implements UserService{

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private UserRoleRepository userroleRepository;
	@Autowired
	private RoleRepository roleRepository;
	
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
	
	@Override
	public User save(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt()));
		user = this.userRepository.save(user);
		Role role = this.roleRepository.findByName("CUSTOMER");
		Userrole userrole = new Userrole();
		userrole.setId(new UserroleId(user.getId(), role.getId()));
		userrole.setUser(user);
		userrole.setRole(role);
		this.userroleRepository.save(userrole);
		return user;
	}

}
