<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.IOException,
 java.io.PrintWriter,
 java.sql.*,


 javax.servlet.ServletException,
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
				
			
String rpass=request.getParameter("mob");

String mail=request.getParameter("mail");	

String mob=request.getParameter("contact");
		
	
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
			
			Statement st=con.createStatement();
			
			
			
			int i=st.executeUpdate("insert into request_contact values('"+name+"','"+rpass+"','"+mail+"','"+mob+"')");
			
			if(i==1)
			{
				
				out.print("request submitted we will revert back to you");
				%>
				<a href="index">clickhere</a>
				<% 
				
			 
				
			}
			else
			{
				
				out.print("error! in accepting details");
				
			
			
		}
			
			
			st.close();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>