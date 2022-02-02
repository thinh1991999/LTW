package Beans;

public class ProductBought {
	public String urlImg;
	public String id;
	public String title;
	public String size;
	public String color;
	public double price;
	public int count;
	public ProductBought(String urlImg, String id, String title, String size, String color, double price,int count) {
		super();
		this.urlImg = urlImg;
		this.id = id;
		this.title = title;
		this.size = size;
		this.color = color;
		this.price = price;
		this.count=count;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getUrlImg() {
		return urlImg;
	}
	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
}
