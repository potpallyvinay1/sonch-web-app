<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="  java.io.IOException,
 java.io.PrintWriter,
 java.sql.Connection,
 java.sql.DriverManager,
 java.sql.ResultSet,
 java.sql.Statement,

 javax.servlet.ServletException,
 javax.servlet.annotation.WebServlet,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");

String pass=request.getParameter("pwd");


try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    

    java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "admin");
    

    java.sql.Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);


    ResultSet rs = stmt.executeQuery("select * from Sonch_log");
    

    while (rs.next())
    {
      if ((name.contentEquals(rs.getString("name"))) && (pass.contentEquals(rs.getString("password"))))
      {
        
       response.sendRedirect("work");
       
      }
    
    }
    
   
   
    
    if ((!rs.next()))
    {
    out.print("Username and password doesn't match please"); %>
    
    <a href "signup1">register</a>
    
    <%
    }
    

  
    session.setAttribute("user", name);

  }
 catch (Exception e) {
	e.printStackTrace();
 }
%>
</body>
</html>