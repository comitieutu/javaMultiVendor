package comi.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer> {
	
	@Query("from User where username = :username")
	public User find(@Param("username") String username );
	
}
