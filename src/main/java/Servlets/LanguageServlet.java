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
 * Servlet implementation class LanguageServlet
 */
@WebServlet("/language")
public class LanguageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LanguageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vl=request.getParameter("vl");
		String prevUrl=request.getHeader("referer");
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		if(vl.equalsIgnoreCase("tv")) {
			h.setLanguage("TV");
		}else {
			h.setLanguage("EL");
		}
		session.setAttribute("handle", h);
		response.sendRedirect(prevUrl);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
