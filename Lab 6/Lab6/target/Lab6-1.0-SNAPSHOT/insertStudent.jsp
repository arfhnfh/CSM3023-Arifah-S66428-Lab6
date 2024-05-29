<%-- 
    Document   : insertStudent
    Created on : 16 May 2024, 10:28:35 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form action="processStudent.jsp" method="post">
        <section id="student-registration">
            <fieldset>
                <legend>Student Registration</legend>
                <table>
                    <tr>
                        <td><label for="studentID">Student ID</label></td>
                        <td><input type="text" id="studentID" name="stuno" placeholder="E.g:UKXXXXX" pattern="[A-Z0-9]*" required></td>
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="Enter Your Name" required></td>
                    </tr>
                    <tr>
                        <td><label for="program">Program</label></td>
                        <td>
                            <select id="program" name="program" required>
                                <option value="">Select Program</option>
                                <option value="BSc. Soft. Eng.">BSc. Soft. Eng.</option>
                                <option value="BSc. with IM">BSc. with IM</option>
                                <option value="BSc. in Networking">BSc. in Networking</option>
                                <option value="BSc. in Robotics">BSc. in Robotics</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <br><br>
                <button type="submit">Submit</button>
                <button type="button" onclick="window.location.href='index.jsp'">Cancel</button>
            </fieldset>
        </section>
    </form>
</body>
</html>


