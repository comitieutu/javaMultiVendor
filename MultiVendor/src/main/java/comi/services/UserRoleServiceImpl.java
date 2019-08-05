package comi.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Userrole;
import comi.repositories.UserRoleRepository;

@Service("userroleService")
@Transactional
public class UserRoleServiceImpl implements UserRoleService {
	
	@Autowired
	private UserRoleRepository userroleRepository;

	@Override
	public Userrole save(Userrole userrole) {
		return this.userroleRepository.save(userrole);
	}

	@Override
	public Iterable<Userrole> findAll() {
		
		return this.userroleRepository.findAll();
	}

	@Override
	public Userrole find(int id) {
		// TODO Auto-generated method stub
		return this.userroleRepository.findById(id).get();
	}

	@Override
	public void delete(int id) {
		
	 this.userroleRepository.deleteById(id);
	}

	@Override
	public List<Userrole> findMaster() {
		
		return this.userroleRepository.findMaster();
	}

	
}
