<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>contact us</title>
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
       <li ><a href="index">Home</a></li>
      <li><a href="service">Our Services</a></li>
      <li><a href="about">About Us</a></li>
      <li class="active"><a href="contact">Contact Us</a></li>
      <li><a href="signin">Login/Sign Up</a></li>
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
  <div class="col-md-3"></div>
  <div class="col-md-5">
  <blankquote> Contact Us:</blankquote><br>
  <blankquote class="text-primary">Sonch north Campus</blankquote><br>
  <blankquote class="text-primary">pheonix avance</blankquote><br>
  <blankquote class="text-primary">pune , maharastra</blankquote><br>
  <blankquote class="text-primary">Contact us: 8528528521</blankquote><br>
   <blankquote class="text-primary">mail us: info@sonch.com</blankquote><br>
</div>
<div class="col-md-4">
<img src="image/sonch.PNG">
</div>
</div>
<br><br><br><br><br><br><br>


<br>

<div class="row">
<div class="col-md-2"></div>
<div class="col-md-4">

<p class="text-warning">If we are unable to take call please fill the below form</p><br>
  <form action="request" >
    <div class="form-group">
    
      <label for="username">name</label>
      <input type="text" class="form-control" name="name" placeholder="Enter your name">
    </div>
    <div class="form-group">
      <label for="text">mob:no</label>
      <input type="text" class="form-control" name="mob" placeholder="Enter mobile number" >
    </div>
    <div class="form-group">
      <label for="text">e-mail</label>
      <input type="text" class="form-control" name="mail" placeholder="Enter your mail Id" >
    </div>
    <div class="form-group">
      <label for="text">reason for contacting</label>
      <input type="text" class="form-control" name="contact" placeholder="Enter reason" >
    </div>
    
    <button type="submit" class="btn btn-default">Contact Sonch</button>  
  </form>
  </div>
</div>
<br><br><br><br><br><br>
 
 <pre class="text-center" background:'gray' >&copy by Sonch pvt.ltd (India)</pre>
</body>
</html>