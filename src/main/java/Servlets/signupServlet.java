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

import Beans.Handle;
import Beans.User;
import Beans.Users;

/**
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ServletContext context=request.getServletContext();
		Users users=(Users) context.getAttribute("users");
		if(users==null) {
			users=new Users();
			context.setAttribute("users", users);
		}
		HttpSession session= request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		String userName=request.getParameter("userName");
		String password=request.getParameter("password");
		boolean valid=false;
		User userLogin = null;
		for(User u:users.getUsers()) {
			if(u.getUserName().trim().equals(userName.trim()) && u.getPw().trim().equals(password.trim())) {
				valid=true;
				userLogin=u;
				h.setuLogined(u);
				h.setIsLogined("t");
				session.setAttribute("handle", h);
				break;
			}
		}
		if(valid==true) {
//			getServletContext().getRequestDispatcher("/mainshow.jsp").forward(request, response);
			session.setAttribute("userLogin", userLogin);
			response.sendRedirect("./mainshow.jsp");
		}
		else {
			h.setIsLogined("f");
			request.getRequestDispatcher("/signUp.jsp").forward(request, response);
		}
//		response.getWriter().write(h.isLogined());
//		request.getRequestDispatcher("/mainshow.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
