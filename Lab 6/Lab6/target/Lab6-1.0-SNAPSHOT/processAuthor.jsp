<%-- 
    Document   : processAuthor
    Created on : 15 May 2024, 5:27:12 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>processAuthor</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Perform creating and retrieving records via JSP page</h1>

        <jsp:useBean id="myAuthor" class="Lab6.com.Author" scope="request"/>
        <jsp:setProperty name="myAuthor" property="*"/>

        <%
            int result;

            // Debugging: Check the values of myAuthor properties
            System.out.println("Authno: " + myAuthor.getAuthno());
            System.out.println("Name: " + myAuthor.getName());
            System.out.println("Address: " + myAuthor.getAddress());
            System.out.println("City: " + myAuthor.getCity());
            System.out.println("State: " + myAuthor.getState());
            System.out.println("Zip: " + myAuthor.getZip());

            Class.forName("com.mysql.cj.jdbc.Driver");

            String myURL = "jdbc:mysql://localhost/csm3023lab6";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");

            String sInsertQry = "INSERT INTO Author (authno, name, address, city, state, zip) VALUES (?,?,?,?,?,?)";

            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            myPS.setString(1, myAuthor.getAuthno());
            myPS.setString(2, myAuthor.getName());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());

            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("<p>Record successfully added into Author table...!</p>");
                out.print("<p>Record with author no " + myAuthor.getAuthno() + " successfully created...!</p>");
                out.print("<p>Details of record are:</p>");
                out.print("<p>Name: " + myAuthor.getName() + "</p>");
                out.print("<p>Address: " + myAuthor.getAddress() + "</p>");
                out.print("<p>City: " + myAuthor.getCity() + "</p>");
                out.print("<p>State: " + myAuthor.getState() + "</p>");
                out.print("<p>Zip: " + myAuthor.getZip() + "</p>");
            }

            System.out.println("Step 5: Close database connection...!");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed....!");
        %>
    </body>
</html>
