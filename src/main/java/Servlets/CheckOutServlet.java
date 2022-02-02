package Servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Handle;
import Beans.ProductCart;
import Beans.User;
import DB.AllProductDB;

/**
 * Servlet implementation class CheckOutServlet
 */
@WebServlet("/checkout")
public class CheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Handle h=(Handle) session.getAttribute("handle");
		User u=h.getuLogined();
		String userName=u.getUserName();
		Enumeration<String> b = request.getParameterNames();
		Map<String, Object> modeMap=new HashMap<String, Object>();
		ArrayList<Integer> idCareCheckOut=new ArrayList<Integer>();
		while(b.hasMoreElements()) {
			String name=b.nextElement();
			String nbt=name.substring(2);
			try {
				Integer idCart=Integer.parseInt(nbt);
				idCareCheckOut.add(idCart);
			} catch (NumberFormatException e) {
				
			}
			modeMap.put(name, request.getParameter(name));
		}
		h.removeProductCartIds(userName, idCareCheckOut);
		session.setAttribute("handle", h);
		for(String key:modeMap.keySet()) {
			String status=(String) modeMap.get(key);
			String[] statusList=status.split("--");
			String id=statusList[0].trim();
			String size=statusList[1].trim();
			String color=statusList[2].trim();
			Integer count=Integer.parseInt(statusList[3].trim());
			Integer price=Integer.parseInt(statusList[4].trim());
			AllProductDB all=new AllProductDB();
			all.checkOut(userName, id, count, color, size, price);
			System.out.println(status);
		}
		response.getWriter().write("done");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
