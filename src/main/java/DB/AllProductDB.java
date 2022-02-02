package DB;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Beans.Date;
import Beans.Product;
import Beans.ProductBought;
import Beans.User;

public class AllProductDB {
	public ArrayList<Product> getAll() {
		ArrayList<Product> all = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG Order by dateSell";
			ResultSet result = state.executeQuery(sql);
			while (result.next()) {
				String[] urlChild = new String[6];
				String title = result.getString("title");
				String id = result.getString("idTypeProduct");
				String url = result.getString("urlIMG");
				urlChild[0] = result.getString("urlIMG1");
				urlChild[1] = result.getString("urlIMG2");
				urlChild[2] = result.getString("urlIMG3");
				urlChild[3] = result.getString("urlIMG4");
				urlChild[4] = result.getString("urlIMG5");
				urlChild[5] = result.getString("urlIMG6");
				String origin = result.getString("origin");
				double price = result.getInt("price");
				int sale = result.getInt("sale");
				int rating = result.getInt("rating");
				int countSold = result.getInt("countSold");
				int asess = result.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				all.add(pro);
			}
		} catch (SQLException e) {
			System.out.print(false);
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return all;
	}

	public ArrayList<Product> getSuggestList(String idd, String type) {
		ArrayList<Product> all = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG a INNER JOIN ProductTypeDetail b ON a.idTypeProduct=b.idTypeProduct WHERE b.productID='"
					+ type + "' and a.idTypeProduct !='" + idd + "'";
			ResultSet result = state.executeQuery(sql);
			while (result.next()) {
				String[] urlChild = new String[6];
				String title = result.getString("title");
				String id = result.getString("idTypeProduct");
				String url = result.getString("urlIMG");
				urlChild[0] = result.getString("urlIMG1");
				urlChild[1] = result.getString("urlIMG2");
				urlChild[2] = result.getString("urlIMG3");
				urlChild[3] = result.getString("urlIMG4");
				urlChild[4] = result.getString("urlIMG5");
				urlChild[5] = result.getString("urlIMG6");
				String origin = result.getString("origin");
				double price = result.getInt("price");
				int sale = result.getInt("sale");
				int rating = result.getInt("rating");
				int countSold = result.getInt("countSold");
				int asess = result.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				all.add(pro);
			}
		} catch (SQLException e) {
			System.out.print(false);
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return all;
	}

	public ArrayList<Product> getProductPopular() {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG ORder By countSold DESC";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public ArrayList<Product> getAllProductSortPriceLToH() {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG ORder By price";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public ArrayList<Product> getAllProductSortPriceHToL() {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG ORder By price DESC";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public ArrayList<Product> getAllTypeProduct(String type) {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG a INNER JOIN ProductTypeDetail b ON a.idTypeProduct=b.idTypeProduct	WHERE b.productID='"
					+ type + "'";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {

			}
		}
		return result;
	}

	public ArrayList<Product> getAllTypeProductPopular(String type) {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG a INNER JOIN ProductTypeDetail b ON a.idTypeProduct=b.idTypeProduct	WHERE b.productID='"
					+ type + "' ORDER BY countSold DESC";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public ArrayList<Product> getAllTypeProductPriceLToH(String type) {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG a INNER JOIN ProductTypeDetail b ON a.idTypeProduct=b.idTypeProduct WHERE b.productID='"
					+ type + "' ORDER BY price";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public ArrayList<Product> getAllTypeProductPriceHToL(String type) {
		ArrayList<Product> result = new ArrayList<Product>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT * FROM UrlIMG a INNER JOIN ProductTypeDetail b ON a.idTypeProduct=b.idTypeProduct	WHERE b.productID='"
					+ type + "' ORDER BY price DESC";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("idTypeProduct");
				String url = resultSet.getString("urlIMG");
				urlChild[0] = resultSet.getString("urlIMG1");
				urlChild[1] = resultSet.getString("urlIMG2");
				urlChild[2] = resultSet.getString("urlIMG3");
				urlChild[3] = resultSet.getString("urlIMG4");
				urlChild[4] = resultSet.getString("urlIMG5");
				urlChild[5] = resultSet.getString("urlIMG6");
				String origin = resultSet.getString("origin");
				double price = resultSet.getInt("price");
				int sale = resultSet.getInt("sale");
				int rating = resultSet.getInt("rating");
				int countSold = resultSet.getInt("countSold");
				int asess = resultSet.getInt("asess");
				Product pro = new Product(id, title, url, sale, price, rating, origin, countSold, urlChild, asess);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public Product getDetail(String id) {
		Product p = null;
		ArrayList<Product> all = getAll();
		for (Product p1 : all) {
			if (p1.getId().equals(id)) {
				p = p1;
				break;
			}
		}
		Connection con2 = null;
		try {
			con2 = DatabaseConnection.getConnection();
			Statement state = con2.createStatement();
			String sql = "select color from Product_Detail where idTypeProduct='" + id + "'group by color";
			ResultSet result = state.executeQuery(sql);
			ArrayList<String> colors = new ArrayList<String>();
			while (result.next()) {
				String color = result.getString("color");
				colors.add(color);
			}
			p.setColor(colors);
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con2.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		try {
			con2 = DatabaseConnection.getConnection();
			Statement state = con2.createStatement();
			String sql = "select size from Product_Detail where idTypeProduct='" + id + "'group by size";
			ResultSet result = state.executeQuery(sql);
			ArrayList<String> sizes = new ArrayList<String>();
			while (result.next()) {
				String size = result.getString("size");
				sizes.add(size);
			}
			p.setSize(sizes);
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con2.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		try {
			con2 = DatabaseConnection.getConnection();
			Statement state = con2.createStatement();
			String sql = "select sum(count) as countA from Product_Detail where idTypeProduct='" + id + "'";
			ResultSet result = state.executeQuery(sql);
			int count = 0;
			while (result.next()) {
				count += result.getInt("countA");
			}
			p.setCountAvai(count);
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con2.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return p;
	}

	public ArrayList<User> getAllUser() {
		ArrayList<User> allUser = new ArrayList<User>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT* FROM UserAccounts";
			ResultSet result = state.executeQuery(sql);
			while (result.next()) {
				String userName = result.getString("userName");
				String password = result.getString("password");
				String email = result.getString("email");
				String sdt = result.getString("sdt");
				String fullName = result.getString("full_name");
				String dateOfBrithS = result.getString("date_of_birth");
				String gender = result.getString("gender");
				String urlAvatar = result.getString("urlAvatar");
				int year = 0, month = 0, day = 0;
				String[] dateOfBirth = new String[3];
				if (dateOfBrithS == null) {
					dateOfBrithS = "";
				}
				try {
					dateOfBirth = dateOfBrithS.split(" ")[0].split("-");
					year = Integer.parseInt(dateOfBirth[0]);
					month = Integer.parseInt(dateOfBirth[1]);
					day = Integer.parseInt(dateOfBirth[2]);
				} catch (NumberFormatException e) {
					year = 1990;
					month = 1;
					day = 1;
				}
				Date dateBirth = new Date(day, month, year);
				User u = new User(userName, password, fullName, urlAvatar, email, sdt, gender, dateBirth);
				allUser.add(u);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return allUser;
	}

	public void saveUserProfile(String userName, String fullName, String urlAvt, String email, String sdt,
			String gender, Date dateOfBirth) {
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "UPDATE UserAccounts SET full_name=N'" + fullName + "',urlAvatar=N'" + urlAvt + "',email=N'"
					+ email + "',sdt='" + sdt + "',gender=N'" + gender + "',date_of_birth='" + dateOfBirth.getYear()
					+ "-" + dateOfBirth.getMonth() + "-" + dateOfBirth.getDay() + "'" + "WHERE userName='" + userName
					+ "'";
			state.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
			}
		}
	}

	public void changeUserPw(String userName, String nPw) {
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "UPDATE UserAccounts SET password='" + nPw + "' WHERE user_name='" + userName + "'";
			state.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}

	public void checkOut(String userName, String id, int count, String color, String size, int price) {
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "INSERT INTO Product_Bought_List values('" + Math.random() * 10000000 + "','" + userName
					+ "','" + id + "',N'" + size + "',N'" + color + "','" + count + "','" + price + "')"
					+ "UPDATE Product_Detail SET countAvail=countAvail-" + count + " Where id='" + id + "' and color='"
					+ color + "' and size='" + size + "'";
			state.execute(sql);
			System.out.println("sqlDone");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}

	public ArrayList<ProductBought> getProductBoughtList(String userName) {
		ArrayList<ProductBought> result = new ArrayList<ProductBought>();
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "SELECT a.user_name,b.title,a.id,a.size,a.color,a.count,a.price,b.urlIMG "
					+ "FROM Product_Bought_List a INNER JOIN UrlIMG b ON a.id=b.idTypeProduct Where a.user_name='"
					+ userName + "'";
			ResultSet resultSet = state.executeQuery(sql);
			while (resultSet.next()) {
				String[] urlChild = new String[6];
				String title = resultSet.getString("title");
				String id = resultSet.getString("id");
				String url = resultSet.getString("urlIMG");
				String size = resultSet.getString("size");
				String color = resultSet.getString("color");
				int count = resultSet.getInt("count");
				int price = resultSet.getInt("price");
				ProductBought pro = new ProductBought(url, id, title, size, color, price, count);
				result.add(pro);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return result;
	}

	public void addUser(String name, String pw) {
		Connection con = null;
		try {
			con = DatabaseConnection.getConnection();
			Statement state = con.createStatement();
			String sql = "INSERT INTO UserAccounts(userName,password) values('" + name + "','" + pw + "')";
			state.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
