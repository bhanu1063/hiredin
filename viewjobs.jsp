<%-- 
    Document   : ownerd
    Created on : 11 Mar, 2020, 6:57:50 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table{
                color:blue;
                padding: 6px;
            }
            th{
                padding: 5px;
                color:green;
            }
          </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" type="text/css" href="style.css"  type="text/css">

    </head>
    <body>
        <%@page import="java.sql.*" %>
        <div class='div1' style="height:320px">
                      <img src="3.png" class="avatar">
        <%
        try {

            String connectionURL = "jdbc:mysql://localhost/bhanu"; 
            Connection con = null; 
            Class.forName("com.mysql.jdbc.Driver"); 
            
            con = DriverManager.getConnection(connectionURL, "root","");
                        
            Statement s = con.createStatement();
            String st = "select * from jobs";
           ResultSet rs = s.executeQuery(st);
           out.print("<table align='center'>");
           out.print("<tr><th>Jobtype</th><th>Salary</th><th>jobdesc</th><th>phone</th><th>email</th></tr>");
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getString("jobtype")+"</td>");
                out.print("<td>"+rs.getString("salary")+"</td> ");
                out.print("<td>"+rs.getString("jobdesc")+"</td>");
                out.print("<td>"+rs.getString("phone")+"</td>");
                out.print("<td>"+rs.getString("email")+"</td></tr>");

            }
            out.print("</table>");
            out.println("<br><br><form><button formaction='index.jsp'>logout</button>");

           
        }
            catch(Exception e){
            out.println("jiji"+e); 
            }
        %>
    </body>
</html>
