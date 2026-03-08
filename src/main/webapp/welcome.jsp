<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" href="indexNewStyle.css">
</head>
<body>
<% if(session != null && session.getAttribute("userName") != null){
	String usrName = (String) session.getAttribute("userName");

%>
<div class="main-container">
        <div class="box-container">
            <h1 style="text-decoration:underline">Login Successful 🚀</h1>
            <h3 class="description">Welcome to the system. Your credentials have been verified successfully. Enjoy a seamless and secure experience while navigating through the platform.</h3>
        	<h2 style="color:green">Welcome <%= usrName %></h2>       
        </div>
        
        <p><a style="text-decoration:none"href=index.html>Go to Home</a></p>
        <a style="text-decoration:none"href="logoutServlet">Logout</a>
</div>    
<% } else{
	   response.sendRedirect("login.jsp");
}
%> 
</body>
</html>