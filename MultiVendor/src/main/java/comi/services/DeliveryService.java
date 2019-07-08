package comi.services;


import comi.entities.Delivery;

public interface DeliveryService {
    public Iterable<Delivery> findAll();
    public Delivery find(int id);
    public Delivery save(Delivery category);
    public void delete(int id);
}
