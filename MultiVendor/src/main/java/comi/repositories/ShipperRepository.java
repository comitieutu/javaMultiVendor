package comi.repositories;

import comi.entities.Shipper;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("shipperRepository")
public interface ShipperRepository extends CrudRepository<Shipper, Integer> {

}
