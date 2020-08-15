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
String name=request.getParameter("uname");

String pass=request.getParameter("pwd");

String rpass=request.getParameter("rpwd");

String mail=request.getParameter("mail");	

String mob=request.getParameter("telp");

String user=request.getParameter("user");
	
Connection conn=null;



try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
	
	Statement st=conn.createStatement();
	
	if(pass.equals(rpass)) {
	
st.executeUpdate("insert into Sonch_reg values('"+name+"','"+pass+"','"+mail+"','"+mob+"','"+user+"')");
	
st.executeUpdate("insert into Sonch_log values('"+name+"','"+pass+"','"+user+"')");




	
		out.print(" registered successfully");
	

	}
	else
	{
		
		out.print(" registration unsuccessfull ");
		
	}
	
	st.close();
	
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>