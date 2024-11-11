package com.user.servlet;

import com.DAO.UserDaoImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String name = request.getParameter("name");
            String phno = request.getParameter("phno").trim();
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDaoImpl userDao = new UserDaoImpl();
            boolean isRegistered = userDao.userRegister(name, phno, email, password);

            if (isRegistered) {
                System.out.println("Successfully inserted your data.");
                request.setAttribute("name", name);
                request.getRequestDispatcher("confirm.jsp").forward(request, response);
            } else {
                System.out.println("Insert failed.");
                request.setAttribute("errorMessage", "Registration failed. Please try again.");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error during registration process.");
            request.setAttribute("errorMessage", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
