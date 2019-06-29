package comi.repositories;

import comi.entities.Saleorderdetail;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("saleOrderDetailRepository")
public interface SaleOrderDetailRepository extends CrudRepository<Saleorderdetail, Integer> {
    @Query("from Saleorderdetail where saleorder.id = :id")
    List<Saleorderdetail> findBySaleOrderId(@Param("id") int id);
}
