package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.WorkDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class AdminDeleteServlet extends HttpServlet{
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        
        WorkDAOImpl dao = new WorkDAOImpl(DBConnect.getConn());
        boolean isDeleted = dao.deleteWork(id);

        HttpSession session = request.getSession();
        if (isDeleted) {
            session.setAttribute("success", "Work deleted successfully.");
        } else {
            session.setAttribute("failed", "Failed to delete work.");
        }
        response.sendRedirect("allworks.jsp"); 
    }
}
