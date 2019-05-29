package com.example.shoppingbackend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.example.shoppingbackend.dao.ProductDAO;
import com.example.shoppingbackend.dto.Product;


public class ProductTestCase {

	private static AnnotationConfigApplicationContext context;
	private static ProductDAO productDAO;
	private Product product;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.example.shoppingbackend");
		context.refresh();
		
		productDAO = (ProductDAO) context.getBean("ProductDAO");
	}
	
	/*
	 * @Test public void testCRUDProduct() { //create Operation
	 * 
	 * product =new Product(); product.setName("Pixel 3a");
	 * product.setBrand("Pixel");
	 * product.setDescription("Google's lates android mobile");
	 * product.setUnitPrice(Double.parseDouble("172000")); product.setActive(true);
	 * product.setCategoryId(1); product.setSupplierId(2);
	 * 
	 * assertEquals("Suceessfull added",true,productDAO.add(product));
	 * 
	 * //reading and updating the category
	 * 
	 * product =productDAO.get(2); product.setName("Pixel 2 Xl");
	 * assertEquals("Suceessfull upadted",true,productDAO.update(product));
	 * 
	 * assertEquals("Suceessfull deleted",true,productDAO.delete(product));
	 * 
	 * //list
	 * 
	 * assertEquals("Suceessfull upadted",4,productDAO.list().size());
	 * 
	 * }
	 */
	
	//@Test
	public void testListActiveProduts() {
		assertEquals("Somethig wrong while fetching the list of products",3,productDAO.listActiveProducts().size());
	}
	//@Test
	public void testListActiveProductsByCategory() {
		assertEquals("Somethig wrong while fetching the list of products",3,productDAO.listActiveProductsByCategory(1).size());
	
		//empty category id below
		
		/*
		 * assertEquals("Somethig wrong while fetching the list of products",1,
		 * productDAO.listActiveProductsByCategory(3));
		 */
		
	}
	
	//@Test
	public void testgetLatesActiveProducts() {
		assertEquals("Somethig wrong while fetching the list of products",3,productDAO.getLatestActiveProducts(3).size());
	}
	
}
