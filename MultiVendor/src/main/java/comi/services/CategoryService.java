package comi.services;

import java.util.List;

import comi.entities.Category;

public interface CategoryService {
	
	public Iterable<Category> findAll();
	public Category find(int id);
	public Category save(Category category);
	public void delete(int id);
	public List<Category> findMaster();
}
