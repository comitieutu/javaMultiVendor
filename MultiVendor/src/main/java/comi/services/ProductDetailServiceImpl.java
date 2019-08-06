package comi.services;

import java.util.List;

import comi.repositories.SaleOrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Productdetail;

@Service("productDetailService")
@Transactional
public class ProductDetailServiceImpl implements ProductDetailService {
	
	@Autowired
	private SaleOrderRepository.ProductDetailRepository productDetailRepository;

	@Override
	public Iterable<Productdetail> findAll() {
		return this.productDetailRepository.findAll();
	}

	@Override
	public Productdetail find(int id) {
		return this.productDetailRepository.findById(id).get();
	}

	@Override
	public Productdetail save(Productdetail productdetail) {
		return this.productDetailRepository.save(productdetail);
	}

	@Override
	public void delete(int id) {
		productDetailRepository.deleteById(id);
	}

	@Override
	public List<Productdetail> findByProduct(int id) {
		return this.productDetailRepository.findByProduct(id);
	}

}
