package comi.services;

import java.util.List;

import comi.entities.Productdetail;

public interface ProductDetailService {
	
	public Iterable<Productdetail> findAll();
	public Productdetail find(int id);
	public Productdetail save(Productdetail productdetail);
	public void delete(int id);
	public List<Productdetail> findByProduct(int id);
	public Productdetail findByDetailProduct(int id);
}
