package comi.services;

import comi.entities.Product;

public interface ProductService {
	
	public Iterable<Product> findAll();
	public Product find(int id);
	public Product save(Product product);
	public void delete(int id);
	public Iterable<Product> findAllById(int id);
}
