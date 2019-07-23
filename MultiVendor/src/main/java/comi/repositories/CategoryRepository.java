package comi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.Category;

@Repository("categoryRepository")
public interface CategoryRepository extends CrudRepository<Category, Integer> {
	@Query("from Category where parent = 0")
	public List<Category> findMaster();
	@Query("from Category where parent = :parent")
	public List<Category> findByMaster(@Param("parent") int parent);
}
