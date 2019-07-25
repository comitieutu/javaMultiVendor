package comi.services;

import comi.entities.Delivery;
import comi.repositories.DeliveryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("deliveryService")
@Transactional
public class DeliveryServiceImpl implements DeliveryService{

    @Autowired
    private DeliveryRepository deliveryRepository;

    @Override
    public Iterable<Delivery> findAll() {
        return this.deliveryRepository.findAll();
    }

    @Override
    public Delivery find(int id) {
        return this.deliveryRepository.findById(id).get();
    }

    @Override
    public Delivery save(Delivery delivery) {
        return deliveryRepository.save(delivery);
    }

    @Override
    public void delete(int id) {
        deliveryRepository.deleteById(id);
    }
}
