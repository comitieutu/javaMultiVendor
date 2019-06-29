package comi.services;

import comi.entities.Saleorder;
import comi.repositories.SaleOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("saleOrderService")
@Transactional
public class SaleOrderServiceImpl implements SaleOrderService {

    @Autowired
    private SaleOrderRepository saleOrderRepository;

    @Override
    public Iterable<Saleorder> findAll() {
        return this.saleOrderRepository.findAll();
    }

    @Override
    public Saleorder find(int id) {
        return this.saleOrderRepository.findById(id).get();
    }

    @Override
    public Saleorder save(Saleorder category) {
        return this.saleOrderRepository.save(category);
    }

    @Override
    public void delete(int id) {
        this.saleOrderRepository.deleteById(id);
    }
}
