<%-- 
    Document   : results
    Created on : Sep 26, 2017, 4:46:13 PM
    Author     : carterneilsen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    
    <% 
       Double TotalHoursWorked = Double.parseDouble (request.getParameter("Hours Worked")); 
       Double HourlyRate = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double NumberHoursOvertime = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double OvertimeHourlyRate = (HourlyRate * 1.5);
       Double GrossPay = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double PretaxDeduct = Double.parseDouble (request.getParameter("Pre-tax Deduct"));
       Double PretaxPay = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double TaxAmount = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double PosttaxPay = Double.parseDouble ( request.getParameter("Hourly Rate"));
       Double PosttaxDeduct = Double.parseDouble (request.getParameter("Post-tax Deduct"));
       Double NetPay = Double.parseDouble (request.getParameter("Hourly Rate"));
       
        %>
    
    <body>
        <h1>Salary Information</h1>
        
        <table border="2">
            <tbody>
            <tr>
                <td>Total Hours Worked:</td>
                <td><%=TotalHoursWorked %></td>
            </tr>
            
            <tr>
                <td>Hourly Rate:</td>
                <td><%= HourlyRate %></td>
            </tr>
            
            <tr>
                <td># Hours Overtime:</td>
                <td></td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= OvertimeHourlyRate %></td>
            </tr>
            
             <tr>
                <td>Gross Pay:</td>
                <td></td>
            </tr>
            
             <tr>
                <td>Pre-tax Deduct:</td>
                <td><%= PretaxDeduct %></td>
            </tr>
            
             <tr>
                <td>Pre-tax Pay:</td>
                <td></td>
            </tr>
            
             <tr>
                <td>Tax Amount:</td>
                <td></td>
            </tr>
            
             <tr>
                <td>Post-tax Pay:</td>
                <td></td>
            </tr>
            
             <tr>
                <td>Post-tax Deduct:</td>
                <td><%= PosttaxDeduct %></td>
            </tr>
            
             <tr>
                <td>Net Pay:</td>
                <td></td>
            </tr>
            </tbody>
            
           
        </table>
        
    </body>
</html>
