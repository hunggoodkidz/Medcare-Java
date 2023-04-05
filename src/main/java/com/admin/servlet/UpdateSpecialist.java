package com.admin.servlet;

import com.dao.SpecialistDAO;
import com.db.DBConnector;
import com.entity.Doctor;
import com.entity.Specialist;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/updateSpecialist")
public class UpdateSpecialist extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String specName = req.getParameter("specName");

            SpecialistDAO dao = new SpecialistDAO(DBConnector.getConn());

            int id = Integer.parseInt(req.getParameter("id"));

            Specialist d = new Specialist(id,specName);

            HttpSession session = req.getSession();

            if (dao.updateSpecialist(d)) {
                session.setAttribute("succMsg", "Specialist Update Sucessfully..");
                resp.sendRedirect("admin/specialist_list.jsp");
            } else {
                session.setAttribute("errorMsg", "something wrong on server");
                resp.sendRedirect("admin/specialist_list.jsp");
            }

    }
}
