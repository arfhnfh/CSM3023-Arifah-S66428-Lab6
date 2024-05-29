<%-- 
    Document   : processStudent
    Created on : 16 May 2024, 10:42:00 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Process Student</title>
</head>
<body>
    <h1>Lab 6 - Task 1 - Perform creating and retrieving records via JSP page</h1>

    <jsp:useBean id="myStudent" class="Lab6.com.Student" scope="request"/>
    <jsp:setProperty name="myStudent" property="*"/>

    <%
        int result;
        Connection myConnection = null;
        PreparedStatement myPS = null;

        try {
            // Check if student ID is null
            if (myStudent.getStuno() == null) {
                throw new Exception("Student ID cannot be null");
            }

            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");

            // Connect to the database
            String myURL = "jdbc:mysql://localhost/csm3023lab6";
            myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");

            // Create prepared statement
            String sInsertQry = "INSERT INTO Student (student_id, student_name, student_program) VALUES (?,?,?)";
            myPS = myConnection.prepareStatement(sInsertQry);
            System.out.println("Step 3: Prepared Statements created...!");

            // Set parameters
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getName());
            myPS.setString(3, myStudent.getProgram());

            // Execute update
            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("<p>Record successfully added into Student's table...!</p>");
                out.println("<p>Record with student no " + myStudent.getStuno() + " successfully created...!</p>");
                out.println("<p>Details of record are:</p>");
                out.println("<p>Student ID: " + myStudent.getStuno() + "</p>");
                out.println("<p>Name: " + myStudent.getName() + "</p>");
                out.println("<p>Program: " + myStudent.getProgram() + "</p>");
            } else {
                out.println("<p>Failed to add record to Student's table.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error: " + e.getMessage() + "</p>");
        } finally {
            // Close resources
            if (myPS != null) try { myPS.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (myConnection != null) try { myConnection.close(); } catch (SQLException e) { e.printStackTrace(); }
            System.out.println("Step 4: Database connection closed...!");
        }
    %>
</body>
</html>
