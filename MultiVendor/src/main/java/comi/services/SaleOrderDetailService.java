package comi.services;

import comi.entities.Saleorder;
import comi.entities.Saleorderdetail;

import java.util.List;

public interface SaleOrderDetailService {
    public Iterable<Saleorderdetail> findAll();
    public Saleorderdetail find(int id);
    public Saleorderdetail save(Saleorderdetail saleorderDetail);
    public List<Saleorderdetail> getSaleOrderDetail(int SaleOrderId);
    public void delete(int id);
}
