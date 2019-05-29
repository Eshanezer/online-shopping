package com.example.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.example.shoppingbackend.dao.CategoryDAO;
import com.example.shoppingbackend.dto.Category;

public class CategoryTestCase {

	private static AnnotationConfigApplicationContext context;
	private static CategoryDAO categoryDAO;
	private Category category;

	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.example.shoppingbackend");
		context.refresh();

		categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
	}

	/*
	 * @Test public void testAddCategory() {
	 * 
	 * category =new Category();
	 * 
	 * category.setName("Laptop");
	 * category.setDescription("all laptop categories here");
	 * category.setImgurl("lap.png");
	 * 
	 * assertEquals("Successfully added category",true,categoryDAO.add(category)); }
	 */

	/*
	 * @Test public void testGetCategory() { category =categoryDAO.get(3);
	 * 
	 * assertEquals("Successfully getetd category","Laptop",category.getName());
	 * 
	 * 
	 * }
	 */

	/*
	 * @Test public void testUpdateCategory(){ category = categoryDAO.get(3);
	 * category.setName("PC");
	 * assertEquals("Successfully updatetd category",true,categoryDAO.update(
	 * category));
	 * 
	 * }
	 */

	/*
	 * @Test public void testDeleteCategory(){ category = categoryDAO.get(3);
	 * assertEquals("Successfully updatetd category",true,categoryDAO.delete(
	 * category));
	 * 
	 * }
	 */

	/*
	 * @Test public void getListCategory() {
	 * assertEquals("Successfully added category",2,categoryDAO.list().size()); }
	 */

	//@Test
	public void testCRUDCategory() {

		// add category

		category = new Category();
		category.setName("Laptop");
		category.setDescription("all laptop categories here");
		category.setImgurl("lap.png");

		assertEquals("Successfully added category", true, categoryDAO.add(category));

		category = new Category();
		category.setName("Television");
		category.setDescription("all television categories here");
		category.setImgurl("tv.png");

		assertEquals("Successfully added category", true, categoryDAO.add(category));
		
		
		/* fetching and updating the category */
		
		category =categoryDAO.get(2);
		category.setName("TV");
		assertEquals("Successfully updatetd category",true,categoryDAO.update(category));
		
		
		/* delete category */
		assertEquals("Successfully updatetd category",true,categoryDAO.delete(category));
		
		/* fetching list */
		assertEquals("Successfully added category",8,categoryDAO.list().size());

	}
}
