package Beans;

public class ProductCart {
	public String id;
	public String size;
	public String color;
	public String count;
	public String locDe;
	public double priceDelivery;
	public String urlImg;
	public String title;
	public double price;
	public	double oldPrice;
	public ProductCart(String id, String size, String color, String count, String locDe,String urlImg,String title,double oldPrice,double price) {
		super();
		this.id = id;
		this.size = size;
		this.color = color;
		this.count = count;
		this.locDe = locDe;
		this.urlImg=urlImg;
		this.title=title;
		this.price=price;
		this.oldPrice=oldPrice;
	}
	public double getOldPrice() {
		return oldPrice;
	}
	public void setOldPrice(double oldPrice) {
		this.oldPrice = oldPrice;
	}
	public String getUrlImg() {
		return urlImg;
	}
	public void setUrlImg(String urlImg) {
		this.urlImg = urlImg;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getLocDe() {
		return locDe;
	}
	public void setLocDe(String locDe) {
		this.locDe = locDe;
	}
	public double getPriceDelivery() {
		return priceDelivery;
	}
	public void setPriceDelivery(double priceDelivery) {
		this.priceDelivery = priceDelivery;
	}
}	
