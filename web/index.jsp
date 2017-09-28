<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:38:34 PM
    Author     : carterneilsen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    <body>
        <h1>Salary Calculator<hr></h1>
        
        <form name="form1" action="results.jsp" method="post">
            <table border="2">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="Hours Worked" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Rate:</td>
                        <td><input type="text" name="Hourly Rate" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="Pre-tax Deduct" value="" size="50" required></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="Post-tax Deduct" value="" size="50" required></td>
                    </tr>
                </tbody>
               
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
             
        
    </body>
</html>
