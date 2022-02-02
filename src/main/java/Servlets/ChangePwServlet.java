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
 * Servlet implementation class ChangePwServlet
 */
@WebServlet("/changePw")
public class ChangePwServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePwServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pw=request.getParameter("pw");
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		User u=h.getuLogined();
		AllProductDB all=new AllProductDB();
		all.changeUserPw(u.getUserName(), pw);
		ServletContext context=request.getServletContext();
		Users users=new Users();
		context.setAttribute("users", users);
		for(User uu:users.getUsers()) {
			if(uu.getUserName().trim().equals(u.getUserName().trim())) {
				session.setAttribute("userLogin", uu);
				h.setuLogined(uu);
				h.setChangePW("t");
				session.setAttribute("handle", h);
			}
		}
		response.sendRedirect("./userProfile.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
