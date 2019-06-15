package comi.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Product;
import comi.repositories.ProductRepository;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductRepository productRepository;

	@Override
	public Iterable<Product> findAll() {
		List<Product> products = new ArrayList<Product>();
		products.add(new Product());
		products.add(new Product());
		products.add(new Product());
		return products;
	}

	@Override
	public Product find(int id) {
		return this.productRepository.findById(id).get();
	}

	@Override
	public Product save(Product product) {
		return this.productRepository.save(product);
	}

	@Override
	public void delete(int id) {
		productRepository.deleteById(id);
	}
}
