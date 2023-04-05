package com.admin.servlet;

import com.dao.DoctorDAO;
import com.dao.SpecialistDAO;
import com.db.DBConnector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/deleteSpecialist")
public class DeleteSpecialist extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));

        SpecialistDAO dao = new SpecialistDAO(DBConnector.getConn());
        HttpSession session = req.getSession();

        if (dao.deleteSpecialist(id)) {
            session.setAttribute("succMsg", "Specialist Delete Sucessfully..");
            resp.sendRedirect("admin/specialist_list.jsp");
        } else {
            session.setAttribute("errorMsg", "something wrong on server");
            resp.sendRedirect("admin/specialist_list.jsp");
        }


    }
}
