<%@page language="java" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html><html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
    <nav>
        <a href="./index.html">Home</a>
        <a href="./form.html">Register</a>
        <a href="./login.html">Login</a>
    </nav>
</header>
<hr>
<h1>Update the details and schedule</h1>
<% 
   String regno = String.valueOf(session.getAttribute("regno"));
    String name = String.valueOf(session.getAttribute("name"));
    String sessionOne = String.valueOf(session.getAttribute("sessionOne")); 
 String sessionTwo = String.valueOf(session.getAttribute("sessionTwo")); 
   String sessionThree = String.valueOf(session.getAttribute("sessionThree"));
   String sessionFour = String.valueOf(session.getAttribute("sessionFour"));%>
<form action="./update.jsp">
    <label for="username">Regd no</label>
    <input type="text" id="username" name="regdno" value="<%= regno %>">
    <br><br>
    <label for="name">Name</label>
    <input type="text" id="name" name="name" value="<%= name %>">
    <br><br>
    <label for="session1">Session1</label>
    <input type="name" id="session1" name="session1" value="<%= sessionOne %>">
    <br><br>
    <label for="session2">Session2</label>
    <input type="name" id="session2" name="session2" value="<%= sessionTwo %>">
    <br><br>
    <label for="session3">Session3</label>
    <input type="name" id="session3" name="session3" value="<%= sessionThree %>">    <br><br> 
   <label for="session4">Session4</label>
    <input type="name" id="session4" name="session4" value="<%= sessionFour %>">
    <br><br>
    <button type="submit" value="Submit">Update</button>
</form>
</body>
</html>
