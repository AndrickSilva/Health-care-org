<%-- 
    Document   : redirect
    Created on : 10 May, 2021, 11:12:10 PM
    Author     : AERAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:forward page="index.jsp">
            <jsp:param value='<%=request.getParameter("gsearch") %>' name="name"/>
        </jsp:forward>
    </body>
</html>
