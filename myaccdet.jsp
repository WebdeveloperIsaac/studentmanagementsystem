<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Account</title>
</head>
<body>
<h1>Your Account Information</h1>
<table border="2">

 
<%
 try{
	 String str = request.getParameter("email");
             Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/register","root","root");
     Statement st=con.createStatement();
     ResultSet res =st.executeQuery("select * from registration where email='"+str+"'");
     while(res.next()){
%>
 <tr>
              <td>Name</td>
             <td><%=res.getString(1) %></td>
             
 </tr>
  <tr>
              <td>USN</td>
             <td><%=res.getString(2) %></td>
             
 </tr>
  <tr>
              <td>DOB</td>
             <td><%=res.getString(3) %></td>
             
 </tr>
  <tr>
              <td>Contact</td>
             <td><%=res.getString(4) %></td>
             
 </tr>
  <tr>
              <td>Email</td>
             <td><%=res.getString(5) %></td>
             
 </tr>
<%
     }
              
                 
 }
catch(Exception e) {
     System.out.println(e);
}
 
%>
  </table>
</body>
</html>
 

 
 
