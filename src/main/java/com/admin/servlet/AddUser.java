package com.admin.servlet;

import com.dao.DoctorDAO;
import com.dao.UserDAO;
import com.db.DBConnector;
import com.entity.Doctor;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/addUser")
public class AddUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {

            String fullName = req.getParameter("fullname");

            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User d = new User(fullName,email,password);

            UserDAO dao = new UserDAO(DBConnector.getConn());

            HttpSession session = req.getSession();

            if (dao.register(d)) {
                session.setAttribute("succMsg", "User Account Added Sucessfully..");
                resp.sendRedirect("admin/add_user.jsp");
            } else {
                session.setAttribute("errorMsg", "something wrong on server");
                resp.sendRedirect("admin/add_user.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
