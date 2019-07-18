package comi.services;

import comi.entities.Shipper;
import comi.repositories.ShipperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("shipperService")
@Transactional
public class ShipperServiceImpl implements ShipperService {

    @Autowired
    private ShipperRepository shipperRepository;

    @Override
    public Iterable<Shipper> findAll() {
        return shipperRepository.findAll();
    }

    @Override
    public Shipper find(int id) {
        return shipperRepository.findById(id).get();
    }

    @Override
    public Shipper save(Shipper shipper) {
        return shipperRepository.save(shipper);
    }

    @Override
    public void delete(int id) {
        shipperRepository.deleteById(id);
    }
}
