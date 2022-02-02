package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
	public static String url="jdbc:sqlserver://localhost:58985;instance=MSI;databaseName=product";
	public static String user="sa";
	public static String password="try1991999";
	public static String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	static{
		try {
			Class.forName(driverClass);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}
}
