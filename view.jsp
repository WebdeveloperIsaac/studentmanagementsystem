<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
     <%@page import="sun.misc.BASE64Encoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>All Account information should be displayed here</h1>
<table border="2">
 <tr>
             <td>Name</td>
             <td>DOB</td>
             <td>USN</td>
             <td>CONTACT</td>
             <td>EMAIL</td>
             <td>PROFILE</td>
</tr>
 
<%
 try{
             Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost/register","root","root");
     Statement st=con.createStatement();
     ResultSet res =st.executeQuery("select * from registration");
     while(res.next()){
    	 Blob b = res.getBlob(7);
			byte img[]= b.getBytes(1, (int)b.length());
			BASE64Encoder enc= new BASE64Encoder();
			String image= enc.encode(img);
			System.out.println(image);


%>
 <tr>
              <td><%=res.getString(1) %></td>
             <td><%=res.getString(2) %></td>
             <td><%=res.getString(3) %></td>
             <td><%=res.getString(4) %></td>
             <td><%=res.getString(5) %></td>
             <td><img src="data:image/gif;base64,<%=image%>" width="75px" height="55px"/></td>
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
 

 
 
