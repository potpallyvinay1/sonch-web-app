<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>superhero</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
String user3=(String)session.getAttribute("user2");
String value=(String)session.getAttribute("get1");
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
      <li class="active"><a href="index"><%=user3 %>,Logout</a></li>
      <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">search</button>
    </form>
    </ul>
  </div>
</nav>
 
<br><br><br><br><br>
<div class="row">
<div class="col-md-2"></div>
<div class="col-md-10">
<form action="super">
 <button type="submit" class="btn btn-default" >Super Hero Portal</button>
 </form>
 <div class="form-group">
 <br><br>

</div>
</div>

<form action="ideasub">
<br><br>
<div class="container">
  <pre>
   
    <select name="item">
    <option value="Technology">Technology</option>
    <option value="Engineering">Engineering</option>
    <option value="Medical">Medical</option>
    <option value="Chemical">Chemical</option>
    <option value="Electrical">Electrical</option>
    <option value="Construction">Construction</option>
    <option value="Media">Media</option>
    </select>
    
    Bid-amount <input type="number" name="bid"> $
  
    <label for="idea">Submit your Idea</label>
    
    <textarea rows="5" cols="100" name="idea" placeholder="submit your idea"></textarea>
    
    <input type="submit" value ="sumbit idea">
    </pre>
  </form>
  </div>
  
  <br><br><br><br><br><br>
 
 <pre class="text-center" background:'gray' >&copy by Sonch pvt.ltd (India)</pre>
</body>
</html>