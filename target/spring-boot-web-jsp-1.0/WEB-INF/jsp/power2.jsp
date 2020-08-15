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
<title>Powerranger</title>
</head>
<body>

<%
String name=request.getParameter("item");
int i=1;

String user12=(String)session.getAttribute("user11");

try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    

    java.sql.Connection con = java.sql.DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "admin");
    

    java.sql.Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);


    ResultSet rs = stmt.executeQuery("SELECT username,Idea,bidamt,idea_id FROM Sonch_idea where Technology='"+name+"'");
    

    while(rs.next())
    {
    	String id=rs.getString("idea_id");
    	String bid=rs.getString("bidamt");
    	String u=rs.getString("username");
    	String k=rs.getString("Idea");%>
    	<div style="background-color:silver">
    	<%
    	out.print("Idea number  :"+i);%><br><%
    	out.print("user         :"+u);%><br><%
    	out.print("Idea         :"+k);%><br><%
    	out.print("Bid-amount   :"+bid+"$");%><br>
    	<form action="powerranger">
    	Your-Bid    :<input type="number" name="ybid">$<br>
    	<input type="submit" value="bid">
    	</form>
    	</div>
    	<br><%%><br><%%><br><%%><br><%
        i++;
    	%>
    	
    	
    	    	<% 
    

    
    session.setAttribute("power", user12);
    session.setAttribute("super", u);
    session.setAttribute("ideanum",id);
    session.setAttribute("superbid", bid);
    
    

    }


  }
 catch (Exception e) {
	e.printStackTrace();
 }
%>
</body>
</html>