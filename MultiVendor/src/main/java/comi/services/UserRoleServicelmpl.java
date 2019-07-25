package comi.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Userrole;
import comi.repositories.UserRoleRepository;

@Service("userRoleService")
@Transactional
public class UserRoleServicelmpl implements UserRoleService {
	@Autowired
	private UserRoleRepository userRoleRepository;
	
	
	@Override
	public Iterable<Userrole> findAll() {
		return this.userRoleRepository.findAll();
	}

	@Override
	public Userrole find(int id) {
		return this.userRoleRepository.findById(id).get();
	}

	@Override
	public Userrole save(Userrole userrole) {
		return this.userRoleRepository.save(userrole);
	}

	@Override
	public void delete(int id) {
		this.userRoleRepository.deleteById(id);
	}

	@Override
	public List<Userrole> findMaster() {
		return this.userRoleRepository.findMaster();
	}

}
