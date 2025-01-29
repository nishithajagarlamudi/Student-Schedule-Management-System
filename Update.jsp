<%@page language="java" %>
%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
   <title>Update</title>
        </head>
<body>
<%   
 // Enter your username and password for the database 
   // in the variables
     String user = "root";
    String password = "Sriman123";
    String regno = request.getParameter("regdno");
    String name = request.getParameter("name");
    String sessionOne = request.getParameter("session1");
    String sessionTwo = request.getParameter("session2");
    String sessionThree = request.getParameter("session3");
    String sessionFour = request.getParameter("session4");
    try { 
       Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", user, password);
       PreparedStatement pstmt = con.prepareStatement("update students set regno=?, name=?, session_one=?, session_two=?, session_three=?, session_four=? where regno='" + regno + "'"); 
       pstmt.setString(1, regno);
        pstmt.setString(2, name);
        pstmt.setString(3, sessionOne);
        pstmt.setString(4, sessionTwo);
        pstmt.setString(5, sessionThree);
        pstmt.setString(6, sessionFour); 
       int i = pstmt.executeUpdate
if (i != 0) {
            out.println("Updated Successfully"); 
       }
 else { 
           out.println("Something went wrong");
        }
    } 
catch (Exception e) {
        out.println(e);
    }%>
</body>
</html>
<%@page language="java" %>
<%”@page import="java.sql.*" %>
<!DOCTYPE html><html lang="en">
<head> 
   <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0“>
  <title>Update</title>
</head>
<body>
<%
    // Enter your username and password for the database
    // in the variables
     String user = "root";
    String password = "Sriman123"; 
   String regno = request.getParameter("regdno");
    String name = request.getParameter("name");
    String sessionOne = request.getParameter("session1");
    String sessionTwo = request.getParameter("session2"); 
   String sessionThree = request.getParameter("session3");
    String sessionFour = request.getParameter("session4");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver"); 
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", user, password);
       PreparedStatement pstmt = con.prepareStatement("update students set regno=?, name=?, session_one=?, session_two=?, session_three=?, session_four=? where regno='" + regno + 
pstmt.setString(1, regno); 
       pstmt.setString(2, name);
        pstmt.setString(3, sessionOne); 
       pstmt.setString(4, sessionTwo);
        pstmt.setString(5, sessionThree); 
       pstmt.setString(6, sessionFour);
        int i = pstmt.executeUpdate(); 
       if (i != 0) {
            out.println("Updated Successfully"); 
       } 
else {
            out.println("Something went wrong");
        } 
   } 
catch (Exception e) {
        out.println(e);    
}
%>
</body>
</html>
