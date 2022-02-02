package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Handle;
import Beans.ProductBought;
import Beans.User;
import DB.AllProductDB;

/**
 * Servlet implementation class userProfile
 */
@WebServlet("/userProfile")
public class userProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		if(!h.getIsLogined().equals("t")) {
			response.sendRedirect("./signUp.jsp");
		}else {
			User u=h.getuLogined();
			AllProductDB all=new AllProductDB();
			ArrayList<ProductBought> arr=all.getProductBoughtList(u.getUserName());
			System.out.println(u.getUserName());
			request.setAttribute("listBought", arr);
			request.getRequestDispatcher("/userProfile.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
