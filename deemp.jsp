<%-- 
    Document   : deemp
    Created on : 11 Mar, 2020, 7:06:35 PM
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
        <div class="div1" style="height:420px;">
         <img src="3.png" class="avatar">
         <h1>EMPLOYEE SIGNUP</h1>  
        <form action="empd.jsp" method="post">
            <input type="text" name="username" placeholder="User Name">
            <input type="text" name="email" placeholder="Email">
            <br><input type ="password" name="password" placeholder="Password">
            <input type="submit" value="SUBMIT">                 
        </form>
        </div>
    </body>
</html>
