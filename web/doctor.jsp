<%-- 
    Document   : doctor
    Created on : 10 May, 2021, 11:15:46 PM
    Author     : AERAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/doctor.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Doctor</h1>
        <p>Please be patient !<br>
           Connecting to Your Doctor.....</p>

        <h2>Your symptoms</h2>
        <div> <%= request.getParameter("name")%></div>


    </body>
</html>
