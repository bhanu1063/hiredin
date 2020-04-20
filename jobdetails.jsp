<%-- 
    Document   : deowner
    Created on : 11 Mar, 2020, 7:08:32 PM
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
        <div class='div1' style="height:480px">
                      <img src="3.png" class="avatar">        

        <form action="jobd.jsp" method="post">
            <input type="text" name="jobtype" placeholder="Job Type"><br>
            <input type="text" name="salary" placeholder="Salary"><br>
            <input type="text" name="phone" placeholder="Phone"><br>
                    
            <input type="text" name="email" placeholder="Email">
            <br><input type ="text" name="jobdesc" placeholder="Job Desc"><br>
            <input type="submit" value='SUBMIT'>
        </form>
        </div>
    </body>
</html>
