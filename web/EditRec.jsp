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
    <form action="UpdateRec.jsp" method="post">
        <%
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Health_care?autoReconnect=true&useSSL=false", "root", "openthedooraeral");
            String _email = (String)session.getAttribute("_email");
            
            
            if(!con.isClosed())
            {
            PreparedStatement ps = con.prepareStatement("select * from user where email = ? ");
            ps.setString(1, _email);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
        %>


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
                <td><input type="text" name="userName" value="<%=rs.getString(1)%>"></td>
                <td><input type="hidden" name="gender" value="<%=rs.getString(2)%>"><%=rs.getString(2)%></td>
                <td><input type="hidden" name="Age" value="<%=rs.getString(3)%>"><%=rs.getString(3)%></td>
                <td><input type="text" name="mobile" value="<%=rs.getString(4)%>"></td>
                <td><input type="text" name="telephone" value="<%=rs.getString(5)%>"></td>
                <td><input type="hidden" name="email" value="<%=rs.getString(6)%>"><%=rs.getString(6)%></td>
                <td><input type="text" name="password" value="<%=rs.getString(7)%>"></td>
                
            </tr>
        </TABLE>
        <input type="submit" value="Update" name="Update"> 
    </form>
    <%
        }
}
    %>

    </body>
</html>
