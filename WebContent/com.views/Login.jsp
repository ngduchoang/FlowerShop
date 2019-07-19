<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style><%@include file="/css/loginstyle.css"%></style>
<title>LOGIN</title>
</head>
<body >
	<div class="container">
  <div class="login">
  	<h1 class="login-heading">
      <strong>Welcome Flower Shop.</strong> Please login.</h1>
      <form method="post" action="login">
        <input type="text" name="username" placeholder="Username" required="required" class="input-txt" />
          <input type="password" name="userpass" placeholder="Password" required="required" class="input-txt" />
          <div class="login-footer">
             <a href="/Book_store/signupv" class="lnk">
              Don't have an account yet?<span id="cr">Create an account</span>
            </a>
           
            <button type="submit" class="btn btn--right">Login</button>
          </div>
          <p style="color:white;font-size: 15px;font-weight:100;font-family: 'Ubuntu', 'Lato', sans-serif">${message}</p>
      </form>
  </div>
</div>
  
  

    <script><%@include file="/js/index.js"%></script>

</body>
</html>