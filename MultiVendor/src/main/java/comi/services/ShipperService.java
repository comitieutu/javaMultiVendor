package comi.services;

import comi.entities.Shipper;

public interface ShipperService {
    public Iterable<Shipper> findAll();
    public Shipper find(int id);
    public Shipper save(Shipper shipper);
    public void delete(int id);
}
