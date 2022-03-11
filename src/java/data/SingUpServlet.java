package data;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import data.DBhandler;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author AERAL
 */
@WebServlet("/SignUpServlet")
public class SingUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        int age = Integer.parseInt(req.getParameter("age"));
        String gender = req.getParameter("gender");
        String email = req.getParameter("email");
        String mobile = req.getParameter("mobile");
        String telephone = req.getParameter("telephone");
        

        try {
           DBhandler db = new DBhandler();
           db.creatUser(userName, password, email, age, gender, mobile, telephone);
           resp.sendRedirect("search.html");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(SingUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(SingUpServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        
    }

}
