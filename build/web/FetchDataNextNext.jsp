<%@page import="javafx.scene.control.Alert"%>
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
        <title></title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Health_care?autoReconnect=true&useSSL=false", "root", "openthedooraeral");
            String opr = request.getParameter("operation");
            String _email = (String)session.getAttribute("_email");
            

            if (opr.equalsIgnoreCase("Edit")) {
                response.sendRedirect("EditRec.jsp");
            } else if (opr.equalsIgnoreCase("Delete")) {
                PreparedStatement ps = con.prepareStatement("delete from user where email =?");
                ps.setString(1, _email);

                int a1 = ps.executeUpdate();
                if (a1>0) {
                    //javax.swing.JOptionPane.showMessageDialog(null, "Record Deleted");
                    System.out.println("deleted");                   
                    response.sendRedirect("FetchData.jsp");
                } else {
                    //javax.swing.JOptionPane.showMessageDialog(null, "Record not found");
                    response.sendRedirect("FetchData.jsp");
                }
            }


        %>

    </body>
</html>
