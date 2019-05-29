package com.example.shoppingbackend.dao;

import java.util.List;

import com.example.shoppingbackend.dto.Category;

public interface CategoryDAO {

	Boolean add(Category category);
	
	List<Category> list();

	Category get(int id);
	
	Boolean update(Category category);
	
	Boolean delete(Category category);
	
}
