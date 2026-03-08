package com.sohail.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.sohail.dao.UserDao;
import com.sohail.dao.UserDaoImpl;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userDao = new UserDaoImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		
		if(userDao.isValidUser(userName, password)) {             // Dao --> Data Access Object Layer
			HttpSession session = request.getSession();
			session.setAttribute("userName", userName);
			response.sendRedirect("welcome.jsp");
		} else {
			response.sendRedirect("login.jsp?error=1");
			//System.out.println("Error AA gya");
		}
	}
}
