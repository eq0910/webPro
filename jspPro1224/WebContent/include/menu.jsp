<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/mixitup/2.1.11/jquery.mixitup.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.portfolio-menu button.mixitup-control-active {

      background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
      border: 2px solid #4bcaff;
      color: #4bcaff;
      padding: 10px 15px;
    font-weight: 700;
    transition: .4s;
    text-transform: uppercase;
}
.portfolio-menu button {
      background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
      border: 2px solid transparent;
      color: #515f67;
      padding: 10px 15px;
    font-weight: 700;
    text-transform: uppercase;
    cursor: pointer;
}
</style>
</head>

<body>
<div class="container">
	<div class="row">
		<div class="col-md-4">
		    <div class="section-title">
			    <h2>MR DESIGN</h2>
			</div>
		</div>
		<div class="col-md-8">
		    <div class="portfolio-menu">
                <a href="../ch07/home.jsp"><button type="button" data-filter="all">Home</button></a>
               <a href="../ch07/join.jsp"> <button type="button" data-filter=".category-a">회원가입</button></a>
                <a href="../ch07/session_login.jsp"><button type="button" data-filter=".category-b">사원정보</button></a>
                <a href="../include/gall.jsp"><button type="button" data-filter=".category-c">갤러리</button></a>
               <a href="../map/map.jsp"> <button type="button" data-filter=".category-d">오시는길</button></a>
            </div>
		</div>
	</div>
</div>

</body>
</html>