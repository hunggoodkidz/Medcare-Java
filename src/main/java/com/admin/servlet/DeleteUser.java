package com.admin.servlet;

import com.dao.DoctorDAO;
import com.dao.UserDAO;
import com.db.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/deleteUser")
public class DeleteUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        UserDAO dao = new UserDAO(DBConnector.getConn());
        HttpSession session = req.getSession();

        if (dao.deleteUser(id)) {
            session.setAttribute("succMsg", "User Delete Sucessfully..");
            resp.sendRedirect("admin/user_list.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/user_list.jsp");
        }


    }
}
