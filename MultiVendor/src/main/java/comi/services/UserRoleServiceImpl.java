package comi.services;

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
}
