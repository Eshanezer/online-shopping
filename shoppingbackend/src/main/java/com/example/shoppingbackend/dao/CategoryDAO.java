package com.example.shoppingbackend.dao;

import java.util.List;

import com.example.shoppingbackend.dto.Category;

public interface CategoryDAO {

	List<Category> list();
	
	Category get(int id);
}
