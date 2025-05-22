package com.jsp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.ProductDao;
import com.jsp.Dto.Product;

@Controller
public class ProductController {

	@Autowired
	ProductDao dao; 
	
	// 1) inserting Product details
	
	@RequestMapping("/add")
	public ModelAndView getProduct() {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("product",new Product());
		mv.setViewName("create");
		return mv; 
	}
	 
	@RequestMapping("/save")
	public ModelAndView saveProduct(@ModelAttribute Product product) {
		
		String msg = dao.insertProduct(product);
		ModelAndView mv = new ModelAndView();
		mv.addObject("successMsg", msg);
		mv.setViewName("success");
		return mv; 
		
	}
	
	
	// 2) View all product details
	
	@RequestMapping("/view")
	public ModelAndView getAllProduct() {
		List <Product> list = dao.getAllProduct();
		ModelAndView mv = new ModelAndView();
		mv.addObject("productList",list);
		mv.setViewName("productAll");
		return mv; 
	}
	
	
	// 3) search product based on name or category
	
	@RequestMapping("/search")
	public String getSearchForm() {
		return "search";
	}
	
	
	
	@RequestMapping("/searchProduct")
	public ModelAndView displayProductDetails(@RequestParam String value) {
		
		List <Product> list = dao.getSearchNameCateg(value);
		
		if(list != null) {
			ModelAndView mv = new ModelAndView();
			mv.addObject("searchProduct", list);
			mv.setViewName("searchProduct");
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("errorMsg", "No products found for :" + value);
			mv.setViewName("search");
			return mv; 
		}
		
	}

		
		// 4) Purchase products 
	@RequestMapping("/purchaseProduct")
	public String getPurchaseForm() {
	    return "purchase"; 
	}
	
	@RequestMapping("/getBill")
	public ModelAndView getPurchaseProduct(@RequestParam String name, @RequestParam int quantity) {
		
		Product pro = dao.purchase(name, quantity);
		if(pro != null) {
			double productPrice = pro.getPrice();
			double totalPrice = productPrice * quantity;
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("totalamount",totalPrice);
			mv.addObject("productName",pro.getName());
			mv.addObject("productPrice",productPrice);
			mv.addObject("productQuantity",quantity);
			mv.setViewName("bill");
			return mv;
		}
		else {
			ModelAndView mv = new ModelAndView();
			mv.addObject("errorMsg", "The product is not available...!");
	        mv.setViewName("error"); 
	        return mv; 
		}
		
	}

	
	
		// Created by Atharv A. Lavhale
		
	}
	
	

