<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Health_care?autoReconnect=true&useSSL=false", "root", "openthedooraeral");           
            String userName = request.getParameter("userName");
            String password = request.getParameter("password");
            String gender = request.getParameter("gender");
            String mobile = request.getParameter("mobile");
            String telephone = request.getParameter("telephone");
            String _email = (String)session.getAttribute("_email");

            
            if (!con.isClosed()) {
                PreparedStatement p1 = con.prepareStatement("update user set userName=?, gender=?, mobile=?, telephone=?, password=? where email=?");
                p1.setString(1, userName);
                p1.setString(2, gender);
                p1.setString(3, mobile);
                p1.setString(4, telephone);
                p1.setString(5, password);
                p1.setString(6, _email);

                int a = p1.executeUpdate();
                if (a > 0) {
                    //javax.swing.JOptionPane.showMessageDialog(null, "Record Updated");
                    response.sendRedirect("FetchData.jsp");
                }
            }
            
        %>
    </body>
</html>
