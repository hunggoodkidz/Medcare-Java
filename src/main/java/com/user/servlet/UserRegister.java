package com.user.servlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.db.DBConnector;
import com.entity.User;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;


@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			User u = new User(fullName, email, password);
			
			UserDAO dao = new UserDAO(DBConnector.getConn());
			
			HttpSession session = req.getSession();
			
			boolean f = dao.register(u);
			
			if(f) {
				
				session.setAttribute("sucMsg", "Register Successfully");
				resp.sendRedirect("signup.jsp");
				System.out.println("Register successfully");
				
			}else {
				session.setAttribute("errorMsg", "Something wrong on the server");
				resp.sendRedirect("signup.jsp");
				System.out.println("Something wrong on the server");
			}
			
		}catch(Exception e) {
			
		}
		
		
	}

}
