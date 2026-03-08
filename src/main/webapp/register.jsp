<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration-Page</title>
    <link rel="stylesheet" href="indexNewStyle.css">
</head>
<body>
<div class="main-container">
 	<h1 class="registerText">Registration</h1>
       <div class="form-container">
       		<form action="registerServlet" method="post">
       			<div class="inputContainer">
                    <div class="userName">
       				    <p>Usernme :</p>
            		    <input type="text" name="userName" placeholder="Enter username">
       			    </div>
                    <div class="email">
            		    <p> Enter Email :</p>
            		    <input type="text" name="email" placeholder="Enter email">
                    </div>
            	    <div class="password">
            		    <p> Create Password :</p>
            		    <input type="password" name="password" placeholder="Enter Password">
                    </div>    
                    <div class="btnDiv">
            		    <button class="btn">Register</button>
            	    </div>    
            	</div>
            	<div class="home">
       				<p> <a href="index.html">Back to Home</a> </p>
      			 </div>
      			 <% String error = request.getParameter("error");
      			 	if(error != null && error.equals("1")) { %>
      			 	<p style="color:red">Something Wrong. Please try again later</p>
      			 	<% } %>
        	</form>
       </div>
</div>
</body>
</html>