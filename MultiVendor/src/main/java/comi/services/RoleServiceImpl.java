package comi.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Category;
import comi.entities.Role;
import comi.repositories.CategoryRepository;
import comi.repositories.RoleRepository;

@Service("roleService")
@Transactional
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleRepository roleRepository;

	
	@Override
	public Iterable<Role> findAll() {
		return this.roleRepository.findAll();
	}

	@Override
	public Role find(int id) {
		return this.roleRepository.findById(id).get();
	}

	@Override
	public Role save(Role role) {
		return this.roleRepository.save(role);
	}

	@Override
	public void delete(int id) {
		this.roleRepository.deleteById(id);
	}

	@Override
	public List<Role> findMaster() {
		return this.roleRepository.findMaster();
		
	}

	@Override
	public Role  findByName(String name) {
		return this.roleRepository.findByName(name);
		
	}

	

	

	
}
