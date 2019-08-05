package comi.services;

import java.util.List;


import comi.entities.Role;

public interface RoleService {
	
	

	public Iterable<Role> findAll();
	public Role find(int id);
	public Role save(Role role);
	public void delete(int id);
	public List<Role> findMaster();
	
	public Role findByName(String name);

}
