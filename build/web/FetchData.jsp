<%-- 
    Document   : FetchData
    Created on : 6 Nov, 2021, 12:58:09 PM
    Author     : AERAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View data</title>
        <style>
            
            fieldset{
              width: 40%;
              margin: 10%;
              margin-left: 25%;
                  
            }
            input[type=text], select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type=submit] {
                width: 100%;
                background-color: #3498db;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #005A9C;
            }
        </style>
    </head>
    <body>
        <form action="FetchDataNext.jsp" method="post">
            <fieldset style="background-color:rgb(252, 252, 252);">
                <legend><b>View data</b></legend>
                <p>Enter email to view record:
                    <input type="text" name="fetch">
                </p>
                <input type="submit" name="submit" value="submit">
            </fieldset>
        </form>
    </body>
</html>
