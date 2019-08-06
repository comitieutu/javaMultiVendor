package comi.repositories;
import comi.entities.Productdetail;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import comi.entities.Saleorder;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.query.Param;

@Repository("saleOrderRepository")
public interface SaleOrderRepository extends CrudRepository<Saleorder, Integer> {


    @Repository("productDetailRepository")
    interface ProductDetailRepository extends CrudRepository<Productdetail, Integer> {

        @Query("from Productdetail where product.id = :id")
        public List<Productdetail> findByProduct(@Param("id") int id);

    }
}
