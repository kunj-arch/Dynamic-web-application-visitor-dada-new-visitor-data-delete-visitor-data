<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Users List</title>  
</head>  
<body>  
  
<%@page import="com.kb.dao.UserDao,com.kb.bean.*,java.util.ArrayList.*,java.util.List"%>  
  
  
<h1>VIEW VISITOR</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>  
<th>Sex</th><th>Country</th><th>Delete</th></tr>  

<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
<td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>  
  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  

</table>  
<br/><a href="adduserform.jsp">Add New Visitor</a>  
  
</body>  
</html>  