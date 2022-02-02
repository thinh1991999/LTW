package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Handle;

/**
 * Servlet implementation class RemoveProductCartServlet
 */
@WebServlet("/removeCart")
public class RemoveProductCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveProductCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String index=request.getParameter("index");
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		int indexx = 0;
		try {
			indexx=Integer.parseInt(index);
		} catch (NumberFormatException e) {
			indexx=-1;
		}
		h.removeProductCart(h.getuLogined().getUserName(), indexx);
		session.setAttribute("handle", h);
		response.getWriter().write("123");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
