package com.example.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.shoppingbackend.dao.CategoryDAO;
import com.example.shoppingbackend.dto.Category;

@Repository("CategoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	private static  List<Category> categories =new ArrayList<Category>();
	
	static {
		
		Category  category =new Category();
		category.setId(1);
		category.setName("Television");
		category.setDescription("all tv categories here");
		category.setImgurl("tv.png");
		
		categories.add(category);
		
		category =new Category();
		category.setId(2);
		category.setName("Mobile");
		category.setDescription("all mobile categories here");
		category.setImgurl("mobile.png");
		
		categories.add(category);
		
		category =new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescription("all laptop categories here");
		category.setImgurl("laptop.png");
		
		categories.add(category);
		
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub
		return categories;
	}

	@Override
	public Category get(int id) {
		
		for(Category category :categories) {
			if(category.getId()==id) return category;
		}
		
		return null;
	}

}
