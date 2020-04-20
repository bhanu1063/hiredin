<%-- 
    Document   : ownerd
    Created on : 11 Mar, 2020, 7:05:36 PM
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
            String us = request.getParameter("jobtype");
            String em = request.getParameter("salary");
            String ps = request.getParameter("jobdesc");
            String mm = request.getParameter("email");
            String ph = request.getParameter("phone");

            String st ="insert into jobs values('"+us+"',"+em+",'"+ps+"','"+mm+"','"+ph+"')";           
            boolean ss =s.execute(st);
            out.println("<form><button formaction='jobdetails.jsp'><b>Click To Add Job</b></button>");
            out.println("<form><button formaction='index.jsp'><b>LOGOUT</button></b></div>");
           
        }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
