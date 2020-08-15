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



String name=(String)session.getAttribute("power");

String super1=(String)session.getAttribute("super");

String power=(String)session.getAttribute("ideanum");

String superb=(String)session.getAttribute("superbid");

String powerb=request.getParameter("ybid");

	
Connection conn=null;



try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	 conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","admin");
	
	Statement st=conn.createStatement();
	
	
	
int k=st.executeUpdate("insert into Sonch_power values('"+name+"','"+super1+"','"+power+"','"+superb+"','"+powerb+"')");
	



if(k==1){

	
		out.print("bidded successfully");
	

	}
	else
	{
		
		out.print("bid unsuccessful");
		
	}
	
	st.close();
	
} catch (Exception e) {
	e.printStackTrace();
}
%>
</body>
</html>