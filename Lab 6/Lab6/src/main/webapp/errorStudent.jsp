<%-- 
    Document   : errorStudent
    Created on : 16 May 2024, 11:02:38 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Error Student</title>
</head>
<body>
    <h1>Lab 6 - Task 3 - Perform creating and retrieving records via JSP page</h1>
    <p>Error occurred when inserting record...!</p>
    <p><%= exception.getMessage() %></p>
    <form id="errorFrm" action="insertStudent.jsp" method="post">
        <button type="submit">Go Back</button>
    </form>
</body>
</html>
