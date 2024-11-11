package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.DB.DBConnect;
import com.entity.User;

public class UserDaoImpl {

    private Connection conn;

    public UserDaoImpl() {
        this.conn = DBConnect.getConn();
    }

    public boolean userRegister(String name, String phno, String email, String password) {
        if (conn == null) {
            System.out.println("Database connection is null. Please check the connection.");
            return false;
        }

        boolean isRegistered = false;
        String query = "INSERT INTO users (name, phno, email, password) VALUES (?, ?, ?, ?)";

        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
            pstmt.setString(1, name);
            pstmt.setString(2, phno);
            pstmt.setString(3, email);
            pstmt.setString(4, password);

            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
                isRegistered = true;
            }
        } catch (SQLException e) {
            System.out.println("Database insertion error:");
            e.printStackTrace();
        }

        return isRegistered;
    }

    public User login(String email, String password) {
        User user = null;
        String sql = "SELECT * FROM users WHERE email = ? AND password = ?";

        try {
        	PreparedStatement pstmt = conn.prepareStatement(sql);
        	pstmt.setString(1, email);  
        	pstmt.setString(2, password);  

            ResultSet result = pstmt.executeQuery();

            while (result.next()) {
                user = new User();
                user.setId(result.getInt(1));
                user.setName(result.getString(2));
                user.setEmail(result.getString(3));
                user.setPhno(result.getString(4));
                user.setPassword(result.getString(5));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}
