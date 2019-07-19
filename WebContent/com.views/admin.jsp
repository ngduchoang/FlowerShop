<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Flower Shop</title>
	<style><%@include file="/css/admin.css"%></style>
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>
<div class="wrapper">
<jsp:include page="header2.jsp"></jsp:include>
	 <section class="contents">
	  	<div class="container">
	  		<div class="row">
	  			<div class="col-md-3 categories">
	  				<ul class="category">
	  					<li><a href="/Flowershop/listuser">User</a></li>
	  					<li><a href="/Flowershop/listproduct">List All Product</a></li>
	  					<li><a href="/Flowershop/addproductview" >Add Product</a></li>
	  					<li><a href="" >Slider</a></li>
	  					<li><a href="" >Ads</a></li>
	  					<li><a href="" >About</a></li>
	  				</ul>
	  			</div>
	  			<div class="col-md-9 content">
	  				
	  			</div>
	  		</div>
	  	</div>
	  </section>
	  <jsp:include page="footer.jsp"></jsp:include>
	  </div>
</body>
</html>