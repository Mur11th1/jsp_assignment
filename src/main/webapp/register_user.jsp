<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.group.bean.UserBean" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .container { max-width: 400px; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; }
        input, select { width: 100%; padding: 8px; margin: 5px 0 15px 0; display: inline-block; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box; }
        .result { padding: 10px; margin-top: 15px; border-radius: 4px; font-weight: bold; }
        .success { background-color: #d4edda; color: #155724; border: 1px solid #c3e6cb; }
        .error { background-color: #f8d7da; color: #721c24; border: 1px solid #f5c6cb; }
    </style>
</head>
<body>
    <div class="container">
        <h2>&#128100; User Registration</h2>

        <jsp:useBean id="user" class="com.group.bean.UserBean" scope="request" />

        <jsp:setProperty name="user" property="*" />

        <%
            String resultMessage = null;
            // Check if the form was submitted (by checking for a required field)
            if (request.getParameter("name") != null) {
                // 3. Call the business logic method
                resultMessage = user.registerUser();
            }
        %>

        <form method="POST" action="register_user.jsp">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" min="1" required>
            
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required>

            <label for="country">Country:</label>
            <select id="country" name="country" required>
                <option value="">-- Select Country --</option>
                <option value="Kenya">Kenya</option>
                <option value="Uganda">Uganda</option>
                <option value="Tanzania">Tanzania</option>
                <option value="Other">Other</option>
            </select>
            
            <input type="submit" value="Register User" style="background-color: #007bff; color: white; cursor: pointer;">
        </form>

        <% if (resultMessage != null) { %>
            <div class="result <%= resultMessage.contains("Successful") ? "success" : "error" %>">
                <%= resultMessage %>
                <% if (resultMessage.contains("Successful")) { %>
                    <p>Details stored: <%= user.getName() %>, <%= user.getCountry() %></p>
                <% } %>
            </div>
        <% } %>

    </div>
</body>
</html>