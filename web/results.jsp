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
        <link rel="stylesheet" type="text/css" href="stylesheet.css"/>
    </head>
    
    <% 
       Double TotalHoursWorked = Double.parseDouble (request.getParameter("Hours Worked")); 
       Double HourlyRate = Double.parseDouble (request.getParameter("Hourly Rate"));
       Double NumberHoursOvertime = 0.0;
       Double OvertimeHourlyRate = 0.0;
       Double GrossPay;
       Double PretaxDeduct = Double.parseDouble (request.getParameter("Pre-tax Deduct"));
       Double PretaxPay;
       Double TaxAmount;
       Double PosttaxPay;
       Double PosttaxDeduct = Double.parseDouble (request.getParameter("Post-tax Deduct"));
       Double NetPay;
       Double OvertimePay;
       Double RegularPay;

       if(TotalHoursWorked>40){
           NumberHoursOvertime = TotalHoursWorked - 40; 
           OvertimeHourlyRate = HourlyRate * 1.5;
           OvertimePay = NumberHoursOvertime*OvertimeHourlyRate;
           RegularPay = 40 * HourlyRate;
           GrossPay = OvertimePay + RegularPay;
       }
       
       else 
        GrossPay = TotalHoursWorked * HourlyRate;
       PretaxPay = GrossPay - PretaxDeduct;
       
       if(GrossPay < 500){
           TaxAmount = PretaxPay * .18;
       }
       else 
       TaxAmount = PretaxPay * .22;
       
       PosttaxPay = PretaxPay - TaxAmount;
       NetPay = PosttaxPay - PosttaxDeduct;
        %>
    
    <body>
        <h1>User Information</h1>
        
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
                <td>Number of Hours Overtime:</td>
                <td><%= NumberHoursOvertime %></td>
            </tr>
            
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td><%= OvertimeHourlyRate %></td>
            </tr>
            
             <tr>
                <td>Gross Pay:</td>
                <td><%= GrossPay %></td>
            </tr>
            
             <tr>
                <td>Pre-tax Deduct:</td>
                <td><%= PretaxDeduct %></td>
            </tr>
            
             <tr>
                <td>Pre-tax Pay:</td>
                <td><%= PretaxPay %></td>
            </tr>
            
             <tr>
                <td>Tax Amount:</td>
                <td><%= TaxAmount %></td> 
            </tr>
            
             <tr>
                <td>Post-tax Pay:</td>
                <td><%= PosttaxPay %></td>
            </tr>
            
             <tr>
                <td>Post-tax Deduct:</td>
                <td><%= PosttaxDeduct %></td>
            </tr>
            
             <tr>
                <td>Net Pay:</td>
                <td><%= NetPay%></td>
            </tr>
            </tbody>
            
           
        </table>
            <a href="index.jsp"> Back to Salary Calculator </a>
    </body>
</html>
