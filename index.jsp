<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Simple Login Form</title>
<link rel="stylesheet" href="stylesheet.css" >
</head>
<body>
<div>
 <h1>Enter Login Credentials</h1>
   <form method="post" action="valid" class="form">
     <h2>Username</h2>
<input type="text" name="uname" placeholder="Username" class="ips" onfocus="this.placeholder=''" >
<h2>Password</h2>
<input type="password" name="pass" placeholder="Password" onfocus="this.placeholder=''"  class="ips">
<input type="submit" class="btn" >
<button class="btn" id="register"> <a href="register.jsp">Register Now</a></button>
</form>
</div>
</body>
</html>