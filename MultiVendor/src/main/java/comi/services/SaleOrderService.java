package comi.services;

import comi.entities.Saleorder;

public interface SaleOrderService {
    public Iterable<Saleorder> findAll();
    public Saleorder find(int id);
    public Saleorder save(Saleorder saleorder);
    public void delete(int id);
}
