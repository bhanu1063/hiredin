<%-- 
    Document   : ownerdash
    Created on : 18 Mar, 2020, 9:26:51 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                out.println("Welcome"+rs.getString("name"));
                out.println("<form><button formaction='jobdetails.jsp'>click to add a job</button>");
                out.println("<form><button formaction='viewjobs.jsp'>click to view jobs</button>");

            %>
    </body>
</html>
