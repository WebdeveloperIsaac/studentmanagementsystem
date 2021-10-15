<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="register.css">
</head>
<body>
<body> 
  <div class="form-container">
 <form action="register" method="post" enctype="multipart/form-data">
  
                 <h1>Registration Form </h1>
          
                <input type="text" name="name" placeholder="Full Name" class="inputs"><br><br>
                <input type="text" name="usn" placeholder="Usn" class="inputs"><br><br>
                 <input type="date" name="dob" class="inputs"><br><br>
                 <input type="text" name="contact" placeholder="contact" class="inputs"><br><br>
                 <input type="email" name="email" placeholder="email Address" class="inputs"><br><br>
                <input type="password" name="psw" placeholder="Password" class="inputs"><br><br>
                <input type="file" name="file"  class="inputs"><br><br>
                
              <button type="submit" class="btn">Registration</button><br><br>

</form>
 </div>
</body>
</html>

