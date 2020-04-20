<%-- 
    Document   : index
    Created on : 11 Mar, 2020, 6:55:23 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="style.css"  type="text/css">

    </head>
    <body>
        <div class="div1">
            <img src="3.png" class="avatar">
            <h1>LOGIN HERE</h1>
        <form action="auth.jsp" method="post">
            <p>Username</p>
            <input type="text" name="username" placeholder="username">
            <p>Password</p>
            <input type ="password" name="password" placeholder="password">  
            <table><tr>
                    <th>EMPLOYEE:</th><td><br><input type="radio" name="type" value="emp" style= "height:20px; width:20px;"></td>
                    <th>OWNER:</th><td><br><input type="radio" name="type" value="OWNER" style= "height:20px; width:20px;"></td></tr>
            </table>
            <input type="submit" value="SUBMIT">
            <br><a href="deemp.jsp">EMPLOYEE SIGNUP ?</a><br>
            <a href="deowner.jsp">OWNER SIGNUP?</a><br>
            <button formaction="clean.jsp"><b>Click Clean</button>
        </form>
        </div>
                
            </body>

    </html>
