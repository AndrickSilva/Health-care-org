<%-- 
    Document   : SignUp
    Created on : 8 May, 2021, 10:33:43 PM
    Author     : AERAL
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="data.DBhandler"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                text-align: center;
                color: red;
                font-family: Source Sans Pro, Arial, sans-serif;
                font-size: 100%;
                padding: 20%;
            } 

            #btn{
                position: relative;
                align-items: center;
                display: inline-block;
                padding: 8px 16px;
                margin-left: 390px;
                color: #fff;
                text-decoration: none;
                text-transform: uppercase;
                font-size: 18px;
                letter-spacing: 2px;
                border-radius: 8px;
                background-color: #005A9C;}
            </style>
        </head>
        <body>

            <%

                String userName = request.getParameter("usernamea");
                String password = request.getParameter("passworda");

                DBhandler db = new DBhandler();

                if (db.checkUser(userName, password)) {
                    response.sendRedirect("search.html");
                } else {
                    out.println("<h1>Hi! " + userName + "<br> Entered username or password is incorrect</h1>");
                }

            %>
            <a id="btn" href="start.html">Retry<span></span></a>
    </body>
</html>
