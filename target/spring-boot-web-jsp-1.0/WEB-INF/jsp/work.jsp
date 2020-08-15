<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>workspace</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body>
<%
String user2=(String)session.getAttribute("user");

session.setAttribute("user2", user2);
%>

 <img src="image/sonch.PNG" >
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
    <ul class="nav navbar-nav" >
      <li><a href="index">Home</a></li>
      <li><a href="service">Our Services</a></li>
      <li><a href="about">About Us</a></li>
      <li><a href="contact">Contact Us</a></li>
      <li class="active"><a href="signin"><%=user2 %> , Logout</a></li>
      <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">search</button>
    </form>
    </ul>
  </div>
</nav>
<%
String user=(String)session.getAttribute("user");

session.setAttribute("user", user);


%>
</div>

<br><br><br><br><br>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-2">
<form action="super">
 <button type="submit" class="btn btn-default" >Super Hero Portal</button>
 </form></div>
 <div class="col-md-4">
 <form action="power">
 <button type="submit" class="btn btn-default">Power ranger Portal</button>
 </form>
</div>
</div>
<br><br><br><br><br><br>
<br><br><br><br><br><br>
<br><br><br> 
 <pre class="text-center" background:'gray' >&copy by Sonch pvt.ltd (India)</pre>
</body>
</html>