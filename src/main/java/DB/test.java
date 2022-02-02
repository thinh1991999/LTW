package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Beans.Product;
import Beans.User;

public class test {
	public static void main(String[] args) throws Exception{
		AllProductDB all=new AllProductDB();
		ArrayList<Product> a=all.getAll();
		ArrayList<User> b=all.getAllUser();
		System.out.print(b.get(0).getPw());
//		System.out.print("1111");
//		String url="jdbc:sqlserver://localhost:58985;instance=MSI;databaseName=product";
//		String user = "sa";
//	    String pass = "try1991999";
//		try {
//			Connection connection= DriverManager.getConnection(url,user,pass);
//			String sql="SELECT* FROM ProductType";
//			Statement statement=connection.createStatement();
//			ResultSet result=statement.executeQuery(sql);
//			int count=0;
//			while (result.next()) {
//				count++;
//				String productId=result.getString("productID");
//				String name=result.getString("name");
//				System.out.println(productId+"--"+name);
//			}
//			connection.close();
//		} catch (SQLException e) {
//			System.out.print("false");
//			e.printStackTrace();
//		}
	}
}
