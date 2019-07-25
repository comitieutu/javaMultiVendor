package comi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import comi.entities.Userrole;
@Repository("userRoleRepository")
public interface UserRoleRepository extends CrudRepository<Userrole, Integer> {

	@Query("from Userrole where id = :id")
	public List<Userrole> findMaster();

}
