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
String item=request.getParameter("item");

String idea=request.getParameter("idea");

String bid=request.getParameter("bid");

Connection conn=null;

String user1=(String)session.getAttribute("user2");

session.setAttribute("user1", user1);



try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
	
	Statement st=conn.createStatement();
	
	
int i=st.executeUpdate("insert into Sonch_idea values(idea_seq.nextval,'"+user1+"','"+item+"','"+idea+"','"+bid+"')");
if(i==1){	
		out.print("submitted successfully");
}

else
{
	out.print("Error in submission,please try later");
}
	
	st.close();
	
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>