package Servlets;

import java.io.IOException;

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
import DB.AllProductDB;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ServletContext context = request.getServletContext();
		Users users = (Users) context.getAttribute("users");
		if (users == null) {
			users = new Users();
			context.setAttribute("users", users);
		}
		HttpSession session = request.getSession();
		Handle h = (Handle) session.getAttribute("handle");
		String userName = request.getParameter("userNameReg");
		String password = request.getParameter("passwordReg");
		String passwordComfirm = request.getParameter("passwordRegComfirm");
		AllProductDB all = new AllProductDB();
		if (!password.trim().equalsIgnoreCase(passwordComfirm.trim())) {
			h.setIsValidRegister("l");
		} else if (users.checked(new User(userName, password))) {
			all.addUser(userName, password);
			users = new Users();
			h.setIsValidRegister("t");
			h.setShow("register");
		} else {
			h.setIsValidRegister("f");
		}
		session.setAttribute("handle", h);
		context.setAttribute("users", users);
		response.sendRedirect("./signUp.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
