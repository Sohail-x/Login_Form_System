<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login-Page</title>
    <link rel="stylesheet" href="indexNewStyle.css">
</head>
<body>
<div class="main-container">
 	<h1 class="loginText">Login</h1>
       <div class="form-container">
       		<form action="loginServlet" method="post">
       			<div class="inputContainer">
                    <div class="userName :">
       				    <p>Usernme</p>
            		    <input type="text" name="userName" placeholder="Enter username">
       			    </div>
            	    <div class="password">
            		    <p>Password :</p>
            		    <input type="password" name="password" placeholder="Enter Password">
                    </div>    
                    <div class="btnDiv">
            		    <button class="btn">Login</button>
            	    </div>    
            	</div>
            	<div class="home">
       				<p> <a href="index.html">Back to Home</a> </p>
      			 </div>
      			 
      			
      			 <% String error = request.getParameter("error");
      			 	if(error != null && error.equals("1")) { %>
      			 	<p style="color:red">Invalid Username or Password</p>
      			 	<% } %>
      			 	
      			 	<%
      			 		String rs = request.getParameter("registration");
      			 		if(rs != null && rs.equals("success")) {
      			 	%>
      			 	<p style="color:green">Registration Successful,Please Login</p>
      			 	<% } %>
        	</form>
       </div>
</div>
</body>
</html>