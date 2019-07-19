<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        	<title>Flower Shop</title>
	<style><%@include file="/css/style1.css"%></style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="css/style.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
 <footer>
     <div class="container">
       <div class="row">
       
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <span class="logo1">FLOWER SHOP</span>
                </div>
                
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="menu1">
                         <span>MENU</span>    
                         <li>
                            <a href="#">HOME</a>
                          </li>
                               
                          <li>
                             <a href="#">ABOUT</a>
                          </li>
                               
                          <li>
                            <a href="#">HELP</a>
                          </li>
                               
                          <li>
                             <a href="#">GALLARY</a>
                          </li>
                     </ul>
                </div>
           
                <div class="col-md-4 col-sm-6 col-xs-12">
                  <ul class="address">
                        <span>CONTACT</span>       
                        <li>
                           <i class="fa fa-phone" aria-hidden="true"></i> <a href="#">0123569875</a>
                        </li>
                        <li>
                           <i class="fa fa-map-marker" aria-hidden="true"></i> <a href="#">Da Nang City</a>
                        </li> 
                        <li>
                           <i class="fa fa-envelope" aria-hidden="true"></i> <a href="#">phucstore@gmail.com</a>
                        </li> 
                   </ul>
               </div>
           
           
           </div> 
        </div>
    </footer>
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