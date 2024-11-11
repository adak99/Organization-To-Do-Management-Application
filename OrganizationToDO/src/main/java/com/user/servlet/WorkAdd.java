package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.WorkDAOImpl;
import com.DB.DBConnect;
import com.entity.WorkData;

@WebServlet("/add_work")
public class WorkAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            // Retrieve form parameters
            String co_name = req.getParameter("co_name");
            String description = req.getParameter("description");
            String git_url = req.getParameter("git_url");

            // Create WorkData object
            WorkData workData = new WorkData(co_name, description, git_url);

            // Initialize DAO and insert data
            WorkDAOImpl dao = new WorkDAOImpl(DBConnect.getConn());
            boolean isInserted = dao.addWork(workData);

            // Get session and set attributes based on operation success
            HttpSession session = req.getSession();
            if (isInserted) {
                session.setAttribute("success", "Work details added successfully.");
            } else {
                session.setAttribute("faild", "Something went wrong on the server.");
            }
            resp.sendRedirect("order.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            req.getSession().setAttribute("faild", "An error occurred while processing your request.");
            resp.sendRedirect("order.jsp");
        }
    }
}
