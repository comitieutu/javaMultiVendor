package comi.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import comi.entities.Product;

import java.util.List;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer> {
	
//	//JPAQL
//	@Query("from Product where price >= :min and price <= :max")
//	public List<Product> findByPrices(@Param("min") double min, @Param("max") double max);
//

//	
//	@Query("from Product where name like %:keyword")
//	public List<Product> searchLike2(@Param("keyword") String keyword);
//	
//	@Query("from Product where name like %:keyword%")
//	public List<Product> searchLike3(@Param("keyword") String keyword);
//	
//	@Query(value = "select * from product order by id desc limit :n" , nativeQuery = true)
//	public List<Product> searchTopProduct(@Param("n") int n);
//	
//	@Query("select sum(quantity) from Product")
//	public Long sum1();
//	
//	@Query("select sum(quantity * price) from Product")
//	public Double sum2();
//	
//	@Query("select count(id) from Product where name = :name")
//	public Long count2(@Param("name") String name);
//	
//	public List<Product> findByStatus(boolean status);

    @Query("from Product where category.id = :categoryid")
	public List<Product> findAllByCategory(@Param("categoryid") int categoryid);

    @Query("from Product where name like %:keyword% and category.id = :categoryid")
	public List<Product> searchLike(@Param("keyword") String keyword, @Param("categoryid") int categoryid);
	
}
