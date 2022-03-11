<%-- 
    Document   : reviews
    Created on : 28 May, 2021, 4:06:56 PM
    Author     : AERAL
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="data.DBhandler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">

            <%
                String Name = request.getParameter("name");
                String Feedback = request.getParameter("feedback");
                DBhandler db = new DBhandler();
                db.ReviewFeedback(Name, Feedback);

            %>              




        </table>
    </body>
</html>
