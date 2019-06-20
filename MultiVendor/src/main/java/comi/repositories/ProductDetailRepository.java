package comi.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.Productdetail;

@Repository("productDetailRepository")
public interface ProductDetailRepository extends CrudRepository<Productdetail, Integer> {
	
	@Query("from Productdetail where product.id = :id")
	public List<Productdetail> findByProduct(@Param("id") int id);
	
}
