package comi.services;

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
		return this.productRepository.findAll();
	}

	@Override
	public Iterable<Product> findAllById(int id) {
		return this.productRepository.findAllByCategory(id);
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
