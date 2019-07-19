<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style><%@include file="/css/sustyle.css"%></style>
<title>SIGN UP</title>
</head>
<body>
	<div class="container">
  <div class="signup">
  	<h1 class="signup-heading">
       SIGN UP</h1>
      <form method="post" action="signup">
       <input type="text" name="name" placeholder="Fullname" required="required" class="input-txt" />
        <input type="text" name="username" placeholder="Username" required="required" class="input-txt" />
          <input type="password" name="userpass" placeholder="Password" required="required" class="input-txt" />
          <input type="password" name="userpass1" placeholder="Re-type Password" required="required" class="input-txt" />
          <div class="signup-footer">
            
            <button type="submit" class="btn btn--right">Sign Up</button>
    
          </div>
      </form>
  </div>
</div>
</body>
</html>