<%-- 
    Document   : empd
    Created on : 11 Mar, 2020, 7:00:10 PM
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
        <%@page import="java.sql.*" %>
        <div class='div1' style="height:220px;"><form><p align="center">SUCCESSFULLY REGISTERED</p><br><br>
        <%
        try {

            String connectionURL = "jdbc:mysql://localhost/bhanu"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver");             
            con = DriverManager.getConnection(connectionURL, "root","");                        
            Statement s = con.createStatement();
            String us = request.getParameter("username");
            String em = request.getParameter("email");
            String ps = request.getParameter("password");
            String st ="insert into empd values('"+us+"','"+em+"','"+ps+"')";
            boolean ss =s.execute(st);
            out.println("<button formaction='index.jsp'><b>Click To Login</b></button></div>");
        }
            catch(Exception e){              
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
