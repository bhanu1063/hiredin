<%-- 
    Document   : clean
    Created on : 11 Mar, 2020, 7:53:43 PM
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
        <div class='div1' style="height:220px">
                      <img src="3.png" class="avatar">
        <%
        try {

            String connectionURL = "jdbc:mysql://localhost/bhanu"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver");             
            con = DriverManager.getConnection(connectionURL, "root","");                        
            Statement s = con.createStatement();
            String st ="delete from empd";
            String sst ="delete from ownerd";
            boolean ss =s.execute(st);
            boolean ssf =s.execute(sst);
            ssf =s.execute("delete from jobs");
            out.print("<p align='center'><b>success</b></p><br>");
            out.println("<form><button formaction='index.jsp'>Click To Login</button></div>");          
        }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
