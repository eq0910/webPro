<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">


.single-portfolio a {

  display: block;
  line-height: 0;
  position: relative;
}
.single-portfolio a::before {
  background: #000 none repeat scroll 0 0;
  content: "";
  height: 100%;
  opacity: 0;
  position: absolute;
  top: 0;
  transform: scale(0.5);
  transition: all 0.3s ease 0s;
  width: 100%;
}
.single-portfolio:hover a::before {
	opacity: .5;
	transform: scale(1);
}
.single-portfolio a::after {
  color: #fff;
  content: "+";
  font-size: 60px;
  left: 0;
  position: absolute;
  right: 0;
  text-align: center;
  top: 50%;
  transform: scale(0);
  transition: all 0.3s ease 0s;
}
.single-portfolio:hover a::after {
	transform: scale(1);
}
</style>
<script>
    $(document).ready(function() {
      // This will create a single gallery from all elements that have class "gallery-item"
        $('.gallery-item').magnificPopup({
          type: 'image',
          gallery:{
            enabled:true
          }
        });
        
        // MixItUp 2
        $('#container').mixItUp();
    });
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mixitup/2.1.11/jquery.mixitup.min.js"></script>
</head>
<body>

<%@ include file="../include/menu.jsp" %>
<%@ include file="../section/se1.jsp" %>
<div class="container">
    <div id="container" class="row">
		<div class="col-md-4 mix category-a">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (5).jpg"><img class="img-responsive" src="../images/a (5).jpg" alt="One" /></a>
			</div>
		</div>
		<div class="col-md-4 mix category-b">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (2).jpg"><img class="img-responsive" src="../images/a (2).jpg" alt="One" /></a>
			</div>
		</div>
		<div class="col-md-4 mix category-c">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (3).jpg"><img class="img-responsive" src="../images/a (3).jpg" alt="One" /></a>
			</div>
		</div>
		<div class="col-md-4 mix category-d">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (4).jpg"><img class="img-responsive" src="../images/a (4).jpg" alt="One" /></a>
			</div>
		</div>
		<div class="col-md-4 mix category-a">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (1).jpg"><img class="img-responsive" src="../images/a (1).jpg" alt="One" /></a>
			</div>
		</div>
		<div class="col-md-4 mix category-b">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (6).jpg"><img class="img-responsive" src="../images/a (6).jpg" alt="One" /></a>
			</div>
		</div>
			<div class="col-md-4 mix category-b">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (7).jpg"><img class="img-responsive" src="../images/a (7).jpg" alt="One" /></a>
			</div>
		</div>
			<div class="col-md-4 mix category-b">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (8).jpg"><img class="img-responsive" src="../images/a (8).jpg" alt="One" /></a>
			</div>
		</div>
			<div class="col-md-4 mix category-b">
		    <div class="single-portfolio">
				<a class="gallery-item" href="../images/a (9).jpg"><img class="img-responsive" src="../images/a (9).jpg" alt="One" /></a>
			</div>
		</div>
	</div>
</div>
    </body>
    <%@ include file="../include/footer.jsp" %>
</html>