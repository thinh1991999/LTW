package Beans;

import java.util.ArrayList;

public class Product {
	public String id;
	public String type;
	public String name;
	public String urlImg;
	public String origin;
	public double oldPrice;
	public int sale;
	public int rateStart;
	public int assess;
	public int countSold;
	public int countAvai;
	public DateBean dateSell;
	public String[] urlChild;
	public ArrayList<String> size;
	public ArrayList<String> color;
	public double newPrice;
	public ArrayList<User> liked;
	
	public Product(String id,String name,String urlImg,int sale,double oldPrice,int rateStart,String origin,int countSold,String[] urlChild,int assess) {
		this.id=id;
		this.name=name;
		this.urlImg=urlImg;
		this.sale=sale;
		this.oldPrice=oldPrice;
		this.rateStart=rateStart;
		this.origin=origin;
		this.countSold=countSold;
		this.urlChild=urlChild;
		this.assess=assess;
	}
	
	public Product(String id, String name, String urlImg, String origin, double oldPrice, int sale, int rateStart,int assess,
			int countSold,int countAvai,String[] urlChild,ArrayList<String> size,ArrayList<String> color) {
		super();
		this.id=id;
		this.name = name;
		this.urlImg = urlImg;
		this.origin = origin;
		this.oldPrice = oldPrice;
		this.sale = sale;
		this.rateStart = rateStart;
		this.assess=assess;
		this.countSold = countSold;
		this.countAvai=countAvai;
		this.urlChild=urlChild;
		this.size=size;
		this.color=color;
		this.newPrice=this.oldPrice*sale/100f;
	}
	
	public int getAssess() {
		return assess;
	}

	public void setAssess(int assess) {
		this.assess = assess;
	}

	public double getNewPrice() {
		return newPrice=this.oldPrice*(100-sale)/100;
	}

	public void setNewPrice(double newPrice) {
		this.newPrice = newPrice;
	}
	
	public int getCountAvai() {
		return countAvai;
	}



	public void setCountAvai(int countAvai) {
		this.countAvai = countAvai;
	}



	public ArrayList<String> getSize() {
		return size;
	}



	public void setSize(ArrayList<String> size) {
		this.size = size;
	}



	public ArrayList<String> getColor() {
		return color;
	}



	public void setColor(ArrayList<String> color) {
		this.color = color;
	}

	public String[] getUrlChild() {
		return urlChild;
	}



	public void setUrlChild(String[] urlChild) {
		this.urlChild = urlChild;
	}



	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrlImg() {
		return urlImg;
	}
	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public double getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public int getRateStart() {
		return rateStart;
	}
	public void setRateStart(int rateStart) {
		this.rateStart = rateStart;
	}
	public int getCountSold() {
		return countSold;
	}
	public void setCountSold(int countSold) {
		this.countSold = countSold;
	}
	public DateBean getDateSell() {
		return dateSell;
	}
	public void setDateSell(DateBean dateSell) {
		this.dateSell = dateSell;
	}
}
