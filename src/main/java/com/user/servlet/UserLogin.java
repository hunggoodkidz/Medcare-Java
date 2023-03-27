package com.user.servlet;

import javax.servlet.http.*;

import com.dao.UserDAO;
import com.db.DBConnector;
import com.entity.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();
		
		UserDAO dao = new UserDAO(DBConnector.getConn());
		User user = dao.login(email, password);
		

		if (user != null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errorMsg", "invalid email & password");
			resp.sendRedirect("user_login.jsp");
		}
	}

	
	
}
