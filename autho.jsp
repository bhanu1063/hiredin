<%-- 
    Document   : ownerd
    Created on : 11 Mar, 2020, 6:57:50 PM
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
        <div class='div1' style="height:240px">
                      <img src="3.png" class="avatar">
        
        <%
        try {

            String connectionURL = "jdbc:mysql://localhost/bhanu"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver"); 
            
            con = DriverManager.getConnection(connectionURL, "root","");
                        
            Statement s = con.createStatement();
            String us = request.getParameter("username");
            String ps = request.getParameter("password");
            String st = "select * from ownerd where name='"+us+"' and pass='"+ps+"'";
           ResultSet rs = s.executeQuery(st);
            if (rs.next())
            {               
                out.println("<p align='center'>Welcome "+rs.getString("name")+"</p>");
                out.println("<br><form><button formaction='jobdetails.jsp'><b>Click To Add a Job</b></button>");
                out.println("<form><button formaction='viewjobs.jsp'><b>Click To View Jobs</b></button></div>");
            }
            else
            {
                out.println("user not registerd");
            }
        }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
