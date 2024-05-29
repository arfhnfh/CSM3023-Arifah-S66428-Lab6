<%-- 
    Document   : queryStudent
    Created on : 17 May 2024, 11:08:35 am
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>queryStudent</title>
    <style>
        table {
            border-collapse: collapse;
        }
        td, th {
            border: 1px solid #999;
            padding: 0.5rem;
            text-align: left;
        }
        
        th {
            background: gold;
        }
    </style>
    </head>

    <body>
        
        <h1>Lab 6 - Task 4 : Retrieving record via JSP page.!</h1>
        <% 
            out.print("<table>");
            out.print("<thead>");
            out.print("<tr>");
            out.print("<th>" + "Student ID" + "</th>");
            out.print("<th>" + "Name" + "</th>");
            out.print("<th>" + "Program" + "</th>");
            out.print("</tr>");
            out.print("</thead>");
            out.print("<tbody>");
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");

            String myURL = "jdbc:mysql://localhost/csm3023lab6";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");
            
            Statement myStatement = myConnection.createStatement();
            
            String myQuery = "SELECT * FROM student";
            ResultSet myResultSet = myStatement.executeQuery(myQuery);
            
            while (myResultSet.next()) {
                out.print("<tr>");
                out.print("<td width=\"20%\">" + myResultSet.getString("student_id") + "</td>");
                out.print("<td width=\"30%\">" + myResultSet.getString("student_name") + "</td>");
                out.print("<td width=\"40%\">" + myResultSet.getString("student_program") + "</td>");
                out.print("</tr>");
            }
            
            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println("");
            System.out.println("Database connection is closed...!");
            
            out.print("</tbody>");
            out.print("</table>");
        %>
    </body>
</html>
