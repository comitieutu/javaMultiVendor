package comi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer> {
	@Query("from Role where name = ROLE_ADMIN")
	public List<Role> findMaster();
	@Query("from Role where name = :name")
	public Role findByName(@Param("name") String name );
	
	
}
