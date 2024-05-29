<%-- 
    Document   : insertAuthor
    Created on : 15 May 2024, 4:47:26 pm
    Author     : Arifah S66428
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Author Registration</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <h1>Register Author</h1>
    <form action="processAuthor.jsp"  method="post">
        <section id="author-registration">
            <fieldset>
                <legend>Author Registration</legend>
                <table>
                    <tr>
                        <td><label for="authno">Author No</label></td>
                        <td><input type="text" id="authno" name="authno" placeholder="Enter Author No"></td> <!-- Changed name to authno -->
                    </tr>
                    <tr>
                        <td><label for="name">Name</label></td>
                        <td><input type="text" id="name" name="name" placeholder="Enter Name"></td>
                    </tr>
                    <tr>
                        <td><label for="address">Address</label></td>
                        <td><input type="text" id="address" name="address" placeholder="Enter Address"></td>
                    </tr>
                    <tr>
                        <td><label for="city">City</label></td>
                        <td><input type="text" id="city" name="city" placeholder="Enter City"></td>
                    </tr>
                    <tr>
                        <td><label for="state">State</label></td>
                        <td><input type="text" id="state" name="state" placeholder="Enter State"></td>
                    </tr>
                    <tr>
                        <td><label for="zip">Zip</label></td>
                        <td><input type="text" id="zip" name="zip" placeholder="Enter Zip"></td>
                    </tr>
                </table>
                <br><br>
                <button type="submit">Submit</button>
                <button type="button">Cancel</button>
            </fieldset>
        </section>
    </form>
</body>
</html>

