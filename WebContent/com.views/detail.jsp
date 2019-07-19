<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flower Shop</title>
<style><%@include file="/css/product.css"%></style>

</head>
<body>
<div class="wrapper">
	 	<jsp:include page="header2.jsp"></jsp:include>
	 	

	  
	   	 <section class="contents">
	  	<div class="container">
	  		<div class="row">
	  			<div class="product_title">
	  				<c:out value="${ProductName}" />
	  		</div>
	  		<div class="col-md-10">
	  			<div class="row">
	  				<div class="col-md-5">
	  					<div class="product_img">
	  						<a href="" title=""><img src="https://i.pinimg.com/564x/bc/15/33/bc1533991a974b996af2692ba3590d42.jpg" alt=""></a>
	  					</div>
	  					<div class="product_price">
	  					<ul>
	  						<li>Price:</li>
	  						<li><c:out value="${ProductPrice}" /></li>
	  					</ul>
	  					</div>
	  				</div>
	  				<div class="col-md-offset-1 col-md-6">
	  					<div class="product_detail">
	  						<div class="detail_title">
	  							Detail
	  						</div>
	  						<div class="product_content">
	  							<c:out value="${LongDetail}" />
	  						</div>
	  					</div>
	  				</div>
	  			</div>
	  			<div class="row descriptions">
	  				<div class="button_text">
	  					<span class="button_description">Description</span>
	  					<span class="button_review">Review</span>
	  				</div>
	  				<div class="description">
	  					<p class="content_description"><c:out value="${ProductDescription}" /></p>
	  				</div>
	  			</div>
	  			<div class="add">
	  				<button class="add_cart">Add to cart</button>
	  			</div>
	  		</div>
	  		<div class="col-md-2">
	  			<div class="key">
	  				<p>
	  					facebook,window,twitter,<br>zalo,wiki,amazon,lazada,<br>facebook,window,twitter,<br>zalo,wiki,amazon,lazada,<br>zalo,wiki,amazon,lazada,<br>zalo,wiki,amazon,lazada,
	  				</p>
	  			</div>
	  		</div>
	  	</div>
	  </section>
	   
	    <jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	 <script>
    $(document).ready(function(){
      $('.slider').bxSlider(
      	{
      		 auto: auto,
  			pager: true,
  			speed:2000,
      	});


    });
  </script>
	  <script>
	    $(document).ready(function(){
	      $('.slider1').bxSlider(
	      	{
	      		controls:false,
	      		
	      	});


	    });
	  </script>
</body>
</html>