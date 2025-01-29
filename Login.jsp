<%@page language="java" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    <title>Student Details</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <% 
                String user = "root"; 
       String password = "Sriman123"; 
       String regno = request.getParameter("regdno");
        try { 
           Class.forName("com.mysql.cj.jdbc.Driver"); 
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", user, password); 
           Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from students where regno='" + regno + "'");
            if (rs.next()) {
                        String regdno = rs.getString(1);
            String name = rs.getString(2); 
           String sessionOne = rs.getString(3);
           String sessionTwo = rs.getString(4); 
           String sessionThree = rs.getString(5);
           String sessionFour = rs.getString(6); 
           session.setAttribute("regno", regdno); 
           session.setAttribute("name", name); 
           session.setAttribute("sessionOne",sessionOne); 
           session.setAttribute("sessionTwo",sessionTwo);    
           session.setAttribute("sessionThree", sessionThree);            
           session.setAttribute("sessionFour", sessionFour);
    %>
    <header>
    <nav> 
       <a href="./index.html">Home</a> 
       <a href="./form.html">Register</a> 
       <a href="./login.html">Login</a> 
   </nav>
    </header>
    <hr>
    <h1>Student Details</h1>
    <div>
        <p>Name: <%= name %></p>
        <p>Regno: <%= regdno %></p>
        <p>Session 1 (09:00 am - 10:00 am): <%= sessionOne %></p>
        <p>Session 2 (10:00 am - 11:00 am): <%= sessionTwo %></p>
        <p>Session 3 (01:30 pm - 02:30 pm): <%= sessionThree %></p>
        <p>Session 4 (02:30 am - 03:00 am): <%= sessionFour %></p>
    </div>
    <br><br>
    <a href="./updateForm.jsp">Update</a>
    <a href="./delete.jsp?regno=<%= regno %>">Delete</a>
    <% 
       } else { 
           out.println("error");
        } 
       } catch (Exception e) { 
           out.println(e);
        } 
   %></body></html>
