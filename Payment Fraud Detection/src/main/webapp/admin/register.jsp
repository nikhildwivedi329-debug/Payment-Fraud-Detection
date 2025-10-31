<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register User</title>
<link rel="stylesheet" href="../style.css">

</head>
<body>
    <h2>User Registration</h2>

    <form action="RegisterServlet" method="post">
        <label>Username:</label><br>
        <input type="text" name="username" required><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" required><br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required><br><br>

        <button type="submit">Register</button>
    </form>

    <p>Already have an account? <a href="login.jsp">Login here</a></p>

    <% if (request.getParameter("success") != null) { %>
        <p style="color:green;">Registration successful! You can now login.</p>
    <% } else if (request.getParameter("error") != null) { %>
        <p style="color:red;">Something went wrong! Try again.</p>
    <% } %>
</body>
</html>
