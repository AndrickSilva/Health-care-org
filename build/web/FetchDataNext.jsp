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
        <style>
            #customers {
                font-family: Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #3498db;
                color: white;
            }
            input[type=submit] {
                background-color: #3498db;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                margin: 1%;
            }

            input[type=submit]:hover {
                background-color: #005A9C;
            }
            </style>
        </head>
        <body>
            <%
                String fetch1 = request.getParameter("fetch");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Health_care?autoReconnect=true&useSSL=false", "root", "openthedooraeral");
                session.setAttribute("_email", fetch1);
                
                if (!con.isClosed()) {
                PreparedStatement ps1 = con.prepareStatement("select * from user where email = ? ");
                ps1.setString(1, fetch1);
                
                ResultSet rs = ps1.executeQuery();
                while (rs.next()) {
            %>

            <form action="FetchDataNextNext.jsp" method="post">
                <TABLE id="customers">
                <tr>
                    <th>userName</th>
                    <th>gender</th>
                    <th>Age</th>
                    <th>mobile</th>
                    <th>telephone</th>
                    <th>email</th>
                    <th>password</th>
                </tr>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                    <td><%=rs.getString(7)%></td>
                </tr>
            </TABLE>
            <input type="submit" value="Edit" name="operation"> 
            <input type="submit" value="Delete" name="operation"> 
        </form>
        <%
            }
}
        %>
    </body>
</html>
