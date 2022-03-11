<%-- 
    Document   : Date
    Created on : 10 May, 2021, 3:09:43 PM
    Author     : AERAL
--%>
<%@page import= "java.util.Date" %>
<%@include file="feedback.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #btn{
                position: relative;
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
        <body >
            <h1 style="padding-top: 19%;"><br/> Submitted At: </h1>
            <%= new Date()%> 

        <a id="btn" href="home.html">Continue to Home</a>
    </body>
</html>
