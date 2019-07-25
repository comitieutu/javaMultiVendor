package comi.services;

import java.util.List;


import comi.entities.Userrole;

public interface UserRoleService {
	
	public Iterable<Userrole> findAll();
	public Userrole find(int id);
	public Userrole save(Userrole userrole);
	public void delete(int id);
	public List<Userrole> findMaster();

}
