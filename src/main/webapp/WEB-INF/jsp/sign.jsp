<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<%
String name=request.getParameter("uname");
				
			
String rpass=request.getParameter("rpwd");

String mail=request.getParameter("mail");	

String mob=request.getParameter("telp");
		
	
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
			
			Statement st=con.createStatement();
			
			
			
			int i=st.executeUpdate("insert into Customer_signup values('"+name+"','"+rpass+"','"+mail+"','"+mob+"')");
			
			if(i==1)
			{
				
				out.print("Thanks for registering");
				
			}
			else
			{
				
				out.print("can't register you into data");
				
			
			
		}
			
			
			st.close();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>