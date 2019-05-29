package com.example.shoppingbackend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.shoppingbackend.dao.CategoryDAO;
import com.example.shoppingbackend.dto.Category;

@Repository("CategoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<Category> list() {
	
		String selectActiveCategories ="FROM Category WHERE active=:active";
		
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategories);
		query.setParameter("active",true);
		
		return query.getResultList();
	}

//	getting a single category based in id
	@Override
	public Category get(int id) {
		
		return sessionFactory.getCurrentSession().get(Category.class,Integer.valueOf(id));
	}

	// add to data to database
	@Override
	public Boolean add(Category category) {
		try {
			sessionFactory.getCurrentSession().persist(category);
			
			return true;
		}catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
	}

	/* update added category */
	@Override
	public Boolean update(Category category) {
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch(Exception ex) {
			return false;
		}
		
	}

	@Override
	public Boolean delete(Category category) {
		category.setActive(false);
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		}catch(Exception ex) {
			return false;
		}
	}

}
