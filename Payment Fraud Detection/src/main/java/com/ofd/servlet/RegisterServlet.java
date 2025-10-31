package com.ofd.servlet;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.sql.*;
import com.ofd.util.DBConnection;

@WebServlet("/admin/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        try (Connection con = DBConnection.getConnection()) {

            String sql = "INSERT INTO user(username, email, password) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);

            int i = ps.executeUpdate();

            if (i > 0) {
                resp.sendRedirect("login.jsp?success=registered");
            } else {
                resp.sendRedirect("register.jsp?error=failed");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("SQL Error: " + e.getMessage());
            resp.sendRedirect("register.jsp?error=sql");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("General Error: " + e.getMessage());
            resp.sendRedirect("register.jsp?error=exception");
        }
    }
}
