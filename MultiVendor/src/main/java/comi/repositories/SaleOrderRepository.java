package comi.repositories;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import comi.entities.Saleorder;
import comi.entities.Saleorderdetail;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.query.Param;

@Repository("saleOrderRepository")
public interface SaleOrderRepository extends CrudRepository<Saleorder, Integer> {

	
}
