package Servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Date;
import Beans.Handle;
import Beans.User;
import Beans.Users;
import DB.AllProductDB;

/**
 * Servlet implementation class userSave
 */
@WebServlet("/userSave")
public class userSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userSave() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dispatch="./userProfile";
		String fullName=request.getParameter("name");
		String urlAvata=request.getParameter("name");
		String email=request.getParameter("email");
		String sdt=request.getParameter("sdt");
		String gender=request.getParameter("gender");
		String day=request.getParameter("day");
		String month=request.getParameter("month");
		String year=request.getParameter("year");
		char[] c=month.toCharArray();
		for(int i=0;i<c.length;i++) {
			if(!(c[i]>='0' && c[i]<='9')) {
				c[i]=' ';
			}
		}
		int mResult=Integer.parseInt(String.valueOf(c).trim());
		int dayI=1;
		int yearI=1990;
		try {
			dayI=Integer.parseInt(day);
			 yearI=Integer.parseInt(year);
		} catch (NumberFormatException e) {
			dispatch="./error.jsp";
		}
		AllProductDB allDB=new AllProductDB();
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		User u=h.getuLogined();
		allDB.saveUserProfile(u.getUserName(), fullName, urlAvata, email, sdt, gender, new Date(dayI, mResult, yearI));
		System.out.print("123");
		ServletContext context=request.getServletContext();
		Users users=new Users();
		context.setAttribute("users", users);
		for(User uu:users.getUsers()) {
			if(uu.getUserName().trim().equals(u.getUserName().trim())) {
				session.setAttribute("userLogin", uu);
				h.setuLogined(uu);
				session.setAttribute("handle", h);
			}
		}
		
//		request.getRequestDispatcher(dispatch).forward(request, response);	
		response.sendRedirect(dispatch);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
