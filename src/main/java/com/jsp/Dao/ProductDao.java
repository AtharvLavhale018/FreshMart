package com.jsp.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.Dto.Product;

import java.util.List;


@Repository

public class ProductDao {

	@Autowired 
	EntityManager manager;
 
	@Autowired
	EntityTransaction transaction;
	
	
	//1) inserting product details 
	
	public String insertProduct(Product product) {
		
		transaction.begin();
		manager.persist(product);
		transaction.commit();
		return "Product inserted successfully!"; 
	}
	
	
	
	// 2) view all product details
	
	public List <Product> getAllProduct(){
		
		Query q = manager.createQuery("select p from Product p");
		List <Product> list = q.getResultList();
		return list; 
	}
	
	
	// 3) search product based on name or category
	
	public List <Product> getSearchNameCateg(String value){
		
		Query q = manager.createQuery("FROM Product p WHERE p.name LIKE :value OR p.category LIKE :value");
		 q.setParameter("value", "%" + value + "%");
		 q.setParameter("value", "%" + value + "%");
		List<Product> list = q.getResultList();
		return list;
	}
	
	// 4) Update stock quantity
	
	public void updateStockQty(String name,int quantity) {
		
		Query q = manager.createQuery("UPDATE Product p SET p.stockQuantity = p.stockQuantity - :quantity WHERE p.name = :name");
		q.setParameter("quantity", quantity);
		q.setParameter("name", name);
		

		transaction.begin();
		q.executeUpdate();
		transaction.commit();
		
		
	}
	
	

	// 5) Purchase products 
	
	public Product purchase(String name , int quantity) {
		
		Query q = manager.createQuery("SELECT p FROM Product p WHERE p.name LIKE ?1 AND p.stockQuantity >= ?2");
		q.setParameter(1,"%" + name + "%");
		q.setParameter(2, quantity);
		List<Product> list = q.getResultList();
		
		if(!list.isEmpty()) {
			updateStockQty(name, quantity);
			return list.get(0);
		}
		else {
			return null; 
		}
		
	}
	
	
}
