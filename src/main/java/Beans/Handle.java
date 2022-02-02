package Beans;

import java.util.ArrayList;
import java.util.HashMap;

public class Handle {
	String isLogined = "o";
	String show = "signUp";
	String isValidRegister = "t";
	String changePW = "f";
	String language = "TV";
	HashMap<String, ArrayList<ProductCart>> userCart;
	HashMap<String, ArrayList<String>> searchHistoryAll;
	User uLogined;
	ArrayList<ProductCart> cartUserLogined = new ArrayList<ProductCart>();
	ArrayList<String> searchHistory = new ArrayList<String>();

	public Handle() {
		userCart = new HashMap<String, ArrayList<ProductCart>>();
		searchHistoryAll = new HashMap<String, ArrayList<String>>();
	}

	public ArrayList<ProductCart> getCartUserLogined() {
		if (uLogined != null) {
			this.cartUserLogined = userCart.get(uLogined.getUserName());
		} else {
			this.cartUserLogined = new ArrayList<ProductCart>();
		}
		return cartUserLogined;
	}

	public ArrayList<String> getSearchHistory() {
		if (uLogined != null) {
			this.searchHistory = searchHistoryAll.get(uLogined.getUserName());
		} else {
			this.searchHistory = searchHistoryAll.get("main");
		}
		return searchHistory;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public void setSearchHistory(ArrayList<String> searchHistory) {
		this.searchHistory = searchHistory;
	}

	public void addSearchHistory(String u, String p) {
		for (String uu : searchHistoryAll.keySet()) {
			if (uu.equals(u)) {
				boolean sameVl=false;
				for(String vl:searchHistoryAll.get(uu)) {
					if(p.trim().equals(vl.trim()) || p.trim().toCharArray().length==0) {
						sameVl=true;
					}
				}
				if(sameVl==false) {
					System.out.print(p.trim().toCharArray().length);
					searchHistoryAll.get(uu).add(p);
				}
				return;
			}
		}
		ArrayList<String> arr = new ArrayList<String>();
		if(p.trim().toCharArray().length!=0) {
			arr.add(p);
		}
		searchHistoryAll.put(u, arr);
	}

	public void setCartUserLogined(ArrayList<ProductCart> cartUserLogined) {
		this.cartUserLogined = cartUserLogined;
	}

	public User getuLogined() {
		return uLogined;
	}

	public void setuLogined(User uLogined) {
		this.uLogined = uLogined;
	}

	public HashMap<String, ArrayList<ProductCart>> getUserCart() {
		return userCart;
	}

	public void setUserCart(HashMap<String, ArrayList<ProductCart>> userCart) {
		this.userCart = userCart;
	}

	public void createUserCart(User u) {
		userCart.put(u.getUserName(), new ArrayList<ProductCart>());
	}

	public void addProductCart(String u, ProductCart p) {
		for (String uu : userCart.keySet()) {
			if (uu.equals(u)) {
				userCart.get(uu).add(p);
				return;
			}
		}
		ArrayList<ProductCart> arr = new ArrayList<ProductCart>();
		arr.add(p);
		userCart.put(u, arr);
	}

	public void removeProductCart(String u, int index) {
		for (String uu : userCart.keySet()) {
			if (uu.equals(u)) {
				userCart.get(uu).remove(index);
				return;
			}
		}
	}

	public void removeProductCartIds(String u, ArrayList<Integer> index) {
		for (String uu : userCart.keySet()) {
			if (uu.equals(u)) {
				for (int i = index.size() - 1; i >= 0; i--) {

					userCart.get(uu).remove((int) index.get(i));
					System.out.println(userCart.get(uu).size());

					System.out.println("---");
				}

			}
		}
	}

	ArrayList<Product> cart;
	Product[] cart2 = new Product[5];
	String[] id;

	public String[] getId() {
		return id;
	}

	public void setId(String[] id) {
		this.id = id;
	}

	public Product[] getCart2() {
		return cart2;
	}

	public void setCart2(Product[] cart2) {
		this.cart2 = cart2;
	}

	public ArrayList<Product> getCart() {
		return cart;
	}

	public void setCart(ArrayList<Product> cart) {
		this.cart = cart;
	}

	public String getIsValidRegister() {
		return isValidRegister;
	}

	public void setIsValidRegister(String isValidRegister) {
		this.isValidRegister = isValidRegister;
	}

	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public String getIsLogined() {
		return isLogined;
	}

	public void setIsLogined(String isLogined) {
		this.isLogined = isLogined;
	}

	public String getChangePW() {
		return changePW;
	}

	public void setChangePW(String changePW) {
		this.changePW = changePW;
	}
}
