package comi.services;

import comi.entities.Saleorder;
import comi.entities.Saleorderdetail;
import comi.repositories.SaleOrderDetailRepository;
import comi.repositories.SaleOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("saleOrderDetailService")
@Transactional
public class SaleOrderDetailServiceImpl implements SaleOrderDetailService {

    @Autowired
    private SaleOrderDetailRepository saleOrderDetailRepository;

    @Override
    public Iterable<Saleorderdetail> findAll() {
        return this.saleOrderDetailRepository.findAll();
    }

    @Override
    public Saleorderdetail find(int id) {
        return this.saleOrderDetailRepository.findById(id).get();
    }

    @Override
    public Saleorderdetail save(Saleorderdetail saleorderdetail) {
        return this.saleOrderDetailRepository.save(saleorderdetail);
    }

    @Override
    public List<Saleorderdetail> getSaleOrderDetail(int SaleOrderId) {
        return this.saleOrderDetailRepository.findBySaleOrderId(SaleOrderId);
    }

    @Override
    public void delete(int id) {
        this.saleOrderDetailRepository.deleteById(id);
    }
}
