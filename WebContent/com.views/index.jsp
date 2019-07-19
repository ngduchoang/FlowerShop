
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Flower Shop</title>
</head>
<body>
	<div class="wrapper">
	 	<jsp:include page="header2.jsp"></jsp:include>
	
	  
	  
	   	  <section class="contents">
	  	<div class="introduce">
		  	<div class="container">
		  		<p class="title">Introduce</p>
		  		<p class="text">A flower, sometimes known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Magnoliophyta, also called angiosperms). The biological function of a flower is to effect reproduction, usually by providing a mechanism for the union of sperm with eggs. Flowers may facilitate outcrossing (fusion of sperm and eggs from different individuals in a population) or allow selfing (fusion of sperm and egg from the same flower). Some flowers produce diaspores without fertilization (parthenocarpy). Flowers contain sporangia and are the site where gametophytes develop. Many flowers have evolved to be attractive to animals, so as to cause them to be vectors for the transfer of pollen. After fertilization, the ovary of the flower develops into fruit containing seeds.</p>
		  	</div>
		  </div>
	  	<div class="container">
	  		<div class="content">
	  			<div class="row">
		  			<p class="content_title">Product</p>
		  		</div>
		  		<div class="slider1">
			
		    <div class="block_slider">
		    	<div class="col-md-9 content_inner">
		  			<div class="row">
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/d6/56/a1/d656a16f0f261ea68b93984e6cb6fbfb.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title"><c:out value="${ProductName}" /></p>
									
									<p class="block_user"><c:out value="${ProductID}" /></p>
									<p class="block_description"><c:out value="${ShortDetail}" /></p>
								</div>
								<a href="/Flowershop/detail" ><p class="more_info">More info</p></a>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/bc/15/33/bc1533991a974b996af2692ba3590d42.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">White rose</p>
									<p class="block_user">User2</p>
									<p class="block_description">White roses are traditionally associated with marriages and new beginnings, but their quiet beauty has also made them a gesture of remembrance.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  			<div class="row">
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/8d/7b/92/8d7b92a61b4f9da6a36e9fecfc441618.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Yellow rose</p>
									<p class="block_user">User1</p>
									<p class="block_description">It is a scrambling shrubby vine growing vigorously to 6 m (20 ft) tall. Unlike most roses, it is practically thornless, though it may bear some prickles up to 5 mm long.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/3c/13/52/3c1352d921662796078fb7deec69da2c.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Sun flower</p>
									<p class="block_user">User2</p>
									<p class="block_description">Showy and upright, sunflowers have inspired paintings, poetry and fabric.Dipping into information on sunflower plants</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  		</div>
		  		<div class=" col-md-3">
		  			<div class="advertise">
		  				<p class="advertise_title">advertise</p>
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  			</div>
		</div>
		    </div>
		    <div class="block_slider">
		    	<div class="col-md-9 content_inner">
		  			<div class="row">
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/d6/56/a1/d656a16f0f261ea68b93984e6cb6fbfb.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Red rose</p>
									<p class="block_user">User1</p>
									<p class="block_description">A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over a hundred species and thousands of cultivars.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/bc/15/33/bc1533991a974b996af2692ba3590d42.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">White rose</p>
									<p class="block_user">User2</p>
									<p class="block_description">White roses are traditionally associated with marriages and new beginnings, but their quiet beauty has also made them a gesture of remembrance.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  			<div class="row">
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/8d/7b/92/8d7b92a61b4f9da6a36e9fecfc441618.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Yellow rose</p>
									<p class="block_user">User1</p>
									<p class="block_description">It is a scrambling shrubby vine growing vigorously to 6 m (20 ft) tall. Unlike most roses, it is practically thornless, though it may bear some prickles up to 5 mm long.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/3c/13/52/3c1352d921662796078fb7deec69da2c.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Sun flower</p>
									<p class="block_user">User2</p>
									<p class="block_description">Showy and upright, sunflowers have inspired paintings, poetry and fabric.Dipping into information on sunflower plants</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  		</div>
		  		<div class=" col-md-3">
		  			<div class="advertise">
		  				<p class="advertise_title">advertise</p>
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  			</div>
		</div>
		    </div>
		    <div class="block_slider">
		    	<div class="col-md-9 content_inner">
		  			<div class="row">
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/d6/56/a1/d656a16f0f261ea68b93984e6cb6fbfb.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Red rose</p>
									<p class="block_user">User1</p>
									<p class="block_description">A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over a hundred species and thousands of cultivars.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6 ">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/bc/15/33/bc1533991a974b996af2692ba3590d42.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">White rose</p>
									<p class="block_user">User2</p>
									<p class="block_description">White roses are traditionally associated with marriages and new beginnings, but their quiet beauty has also made them a gesture of remembrance.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  			<div class="row">
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/8d/7b/92/8d7b92a61b4f9da6a36e9fecfc441618.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Yellow rose</p>
									<p class="block_user">User1</p>
									<p class="block_description">It is a scrambling shrubby vine growing vigorously to 6 m (20 ft) tall. Unlike most roses, it is practically thornless, though it may bear some prickles up to 5 mm long.</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  				<div class="wrapper_block col-md-6">
		  					<div class="content_block">
		  						<img src="https://i.pinimg.com/564x/3c/13/52/3c1352d921662796078fb7deec69da2c.jpg" alt="" class="block_img">
								<div class="block_text">
									<p class="block_title">Sun flower</p>
									<p class="block_user">User2</p>
									<p class="block_description">Showy and upright, sunflowers have inspired paintings, poetry and fabric.Dipping into information on sunflower plants</p>
								</div>
								<p class="more_info">More info</p>
		  					</div>
		  				</div>
		  			</div>
		  		</div>
		  		<div class=" col-md-3">
		  			<div class="advertise">
		  				<p class="advertise_title">advertise</p>
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  				<img src="https://files2.coloribus.com/files/adsarchive/part_2081/20811705/file/interflora-the-flower-effect-2-600-68173.jpg" alt="" class="advertise_img">
		  			</div>
		</div>
		    </div>
		    
		  		
	  		</div>
	  	</div>
	  </section>
	   
	    <jsp:include page="footer.jsp"></jsp:include>
		
	</div>
	
	
  
</body>
</html>