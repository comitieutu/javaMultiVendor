package comi.repositories;


import comi.entities.Delivery;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("DeliveryRepository")
public interface DeliveryRepository extends CrudRepository<Delivery, Integer> {

}
