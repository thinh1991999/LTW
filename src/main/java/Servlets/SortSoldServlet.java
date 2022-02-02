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

import Beans.Product;
import DB.AllProductDB;

/**
 * Servlet implementation class SortSoldServlet
 */
@WebServlet("/sort")
public class SortSoldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SortSoldServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		AllProductDB all=new AllProductDB();
		ServletContext context=request.getServletContext();
		ArrayList<Product> arr=new ArrayList<Product>();
		String status=request.getParameter("status");
		String[] statusE=new String[]{"ak","gi","de","dh","qu"};
		String[] statesE=new String[] {"pb","mn","bc","LtH","HtL"};
		session.setAttribute("change", "on");
//		if(status.equals("all-ak")) {
//			session.setAttribute("s", "ak");
//			arr=all.getAllTypeProduct("ak");
//		}else 
		if(status.equals("all")) {
			arr=all.getAll();
			session.setAttribute("s", "all");
		}
		else if(status.equals("sortNew") || status.equals("sortallNew")) {
			arr=all.getAll();
			session.setAttribute("status", "new");
		}else if(status.equals("sortSold") || status.equals("sortallSold")) {
			arr=all.getProductPopular();
			session.setAttribute("status", "sold");
		}
		else if(status.equals("price-LH") || status.equals("allprice-LH")) {
			arr=all.getAllProductSortPriceLToH();
			session.setAttribute("status", "priceLH");
		}
		else if(status.equals("price-HL") || status.equals("allprice-HL")) {
			arr=all.getAllProductSortPriceHToL();
			session.setAttribute("status", "priceHL");
		}
		for(int i=0;i<statusE.length;i++) {
			if(status.equals("all-"+statusE[i])) {
				session.setAttribute("s", statusE[i]);
				arr=all.getAllTypeProduct(statusE[i]);
			}else if(status.equals("sort"+statusE[i]+"New")) {
				arr=all.getAllTypeProduct(statusE[i]);
				session.setAttribute("status", "new");
			}else if(status.equals("sort"+statusE[i]+"Sold")) {
				arr=all.getAllTypeProductPopular(statusE[i]);
				session.setAttribute("status", "sold");
			}
			else if(status.equals(statusE[i]+"price-LH")) {
				arr=all.getAllTypeProductPriceLToH(statusE[i]);
				session.setAttribute("status", "priceLH");
			}
			else if(status.equals(statusE[i]+"price-HL")) {
				arr=all.getAllTypeProductPriceHToL(statusE[i]);
				session.setAttribute("status", "priceHL");
			}
		}

		context.setAttribute("allProductShow", arr);
		request.getRequestDispatcher("./mainshow.jsp").forward(request, response);
		session.setAttribute("status", "main");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
