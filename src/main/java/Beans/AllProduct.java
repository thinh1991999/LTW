package Beans;

import java.util.ArrayList;

import DB.AllProductDB;

public class AllProduct {
	ArrayList<Product> allProduct=new ArrayList<Product>();
	String a="123";
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public AllProduct() {
		AllProductDB all=new AllProductDB();
		allProduct=all.getAll();
	}
	public ArrayList<Product> getAllProduct() {
		return this.allProduct;
	}
	public void setAllProduct(ArrayList<Product> allProduct) {
		this.allProduct = allProduct;
	}
}
