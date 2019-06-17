package comi.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import comi.entities.Category;
import comi.repositories.CategoryRepository;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public Iterable<Category> findAll() {
		return this.categoryRepository.findAll();
	}

	@Override
	public Category find(int id) {
		return this.categoryRepository.findById(id).get();
	}

	@Override
	public Category save(Category category) {
		return this.categoryRepository.save(category);
	}

	@Override
	public void delete(int id) {
		this.categoryRepository.deleteById(id);
	}

	@Override
	public List<Category> findMaster() {
		return this.categoryRepository.findMaster();
	}
}
