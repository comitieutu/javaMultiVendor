package comi.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import comi.entities.Userrole;

@Repository
public interface UserRoleRepository extends CrudRepository<Userrole, Integer> {
	
}
