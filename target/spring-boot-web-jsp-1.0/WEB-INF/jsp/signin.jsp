<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>joinus</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css" >
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

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
      <li class="active"><a href="signin">Login/Sign Up</a></li>
      <form class="navbar-form navbar-left">
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-default">search</button>
    </form>
    </ul>
  </div>
</nav>
  <br><br>
<div class="row">
<div class="col-md-4"></div>
<div class="col-md-4">

  <form action="servlog">
    <div class="form-group">
    <br><br><br><br><br><br><br>
      <label for="username">Username</label>
      <input type="text" class="form-control" name="name" placeholder="Enter username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="pwd" placeholder="Enter password" >
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">login &gt&gt</button><span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp not a user? <a href="signup1">register</a></span>         
  </form>
  </div>
  <div class="col-md-3"></div>
  </div>
</div>
<br><br><br><br><br><br>
 
 <pre class="text-center" background:'gray' >&copy by Sonch pvt.ltd (India)</pre>
</body>
</html>