package comi.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Integer> {
	
	@Query("from Role where name = :name")
	public Role findByName(@Param("name") String name );
	
}
