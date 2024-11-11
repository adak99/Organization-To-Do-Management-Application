package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.DAO.UserDaoImpl;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            UserDaoImpl userDao = new UserDaoImpl();
            HttpSession session = request.getSession();
            
            // Retrieve user input from the form
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User user = new User();
                user.setName("Admin");
                
                session.setAttribute("userObj", user);
                response.sendRedirect("admin/admin_home.jsp");  
            } else {
                User user = userDao.login(email, password);
                
                if (user != null) {
                    session.setAttribute("userObj", user); 
                    response.sendRedirect("index.jsp");  
                } else {
                    session.setAttribute("faild", "Email and Password invalid");
                    response.sendRedirect("login.jsp");  
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
