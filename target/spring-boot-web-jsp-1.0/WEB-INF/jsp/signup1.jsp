<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">



<title>register</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</head>
<body>
<img src="image/sonch.PNG" >
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
<form  method="post" action="serv">
<br><br><br><br><br>
<pre>
Username                  <input type="text" name="uname"><br>
Password                  <input type="password" name="pwd"><br>
Reenter Password          <input type="password" name="rpwd"><br>
E-Mail Id		  <input type="email" name="mail"><br>
Mobile number	          <input type="tel" name="telp"><br>
          <input type="radio" name="user" value="super" >   Haveanidea              <input type="radio" name="user" value="power">  Needanidea<br>
<input type="checkbox" name="check" required>   Accept <a href="terms" target="_blank">Terms and Conditions</a> <br>
<input type="submit" value="register">           <input type="reset">
                 
</pre>
 </form>  
</div>
</body>
</html>