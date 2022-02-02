package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.AllProduct;
import Beans.Product;
import DB.AllProductDB;

/**
 * Servlet implementation class detailProduct
 */
@WebServlet("/detail-product")
public class detailProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public detailProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String type=id.substring(0, 2);
		ServletContext context=request.getServletContext();
		AllProductDB allDB=new AllProductDB();
		Product p=allDB.getDetail(id);
		ArrayList<Product> suggestList=allDB.getSuggestList(id, type);
		request.setAttribute("productSelected", p);
		request.setAttribute("suggestList", suggestList);
		request.getRequestDispatcher("/detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
