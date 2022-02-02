package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.AllProduct;
import Beans.Handle;
import Beans.Product;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String value=request.getParameter("value");
		HttpSession session=request.getSession();
		ServletContext context=request.getServletContext();
		AllProduct allProduct=(AllProduct) context.getAttribute("allProduct");
		ArrayList<Product> result=new ArrayList<Product>();
		ArrayList<Product> arr=allProduct.getAllProduct();
		for(Product p:arr) {
			if(p.getName().contains(value)||p.getName().toLowerCase().contains(value)) {
				result.add(p);
			}
		}
		Handle h= (Handle) session.getAttribute("handle");
		if(h.getuLogined()!=null) {
			h.addSearchHistory(h.getuLogined().getUserName(), value);
		}else {
			h.addSearchHistory("main", value);
		}
		session.setAttribute("handle", h);
		session.setAttribute("change", "search");
//		char[] a=value.toCharArray();
		System.out.println("---");
		request.setAttribute("valueSearch", value);
		request.setAttribute("searchProduct", result);
		request.getRequestDispatcher("mainshow.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
