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
import Beans.ProductCart;

/**
 * Servlet implementation class AddProductCartServlet
 */
@WebServlet("/addCart")
public class AddProductCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=(String) request.getParameter("id");
		String size=(String) request.getParameter("size");
		String color=(String) request.getParameter("color");
		String count=(String) request.getParameter("count");
		String locDe=(String) request.getParameter("locDe");
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		ServletContext context=request.getServletContext();
		AllProduct allProduct=(AllProduct) context.getAttribute("allProduct");
		ArrayList<Product> arr=allProduct.getAllProduct();
		for(Product p:arr) {
			if(p.getId().equals(id)) {
				h.addProductCart(h.getuLogined().getUserName(),new ProductCart(id, size, color, count, locDe,p.getUrlImg(),p.getName(),p.getOldPrice(),p.getNewPrice()));
				response.getWriter().write(p.getId());
				break;
			}
		}
		ArrayList<ProductCart> cart=h.getUserCart().get(h.getuLogined().getUserName());
		session.setAttribute("handle", h);
		session.setAttribute("cart", cart);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
