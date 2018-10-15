<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src = "../include/jquery-3.3.1.min.js" ></script>
<style type="text/css">

body {
    font-family: 'Roboto';font-size: 14px;
}
h3.site-title {
    color: #000;
    font-size: 3em;
    text-transform: uppercase;
    letter-spacing: 2px;
    text-align: center;
    position: relative;
    margin-bottom: 1.5em;
}
h3.site-title:before {
    content: "";
    background: #03A9F4;
    width: 6%;
    height: 2px;
    position: absolute;
    right: 63%;
    top: 51%;
}
h3.site-title:after {
    content: "";
    background: #03A9F4;
    width: 6%;
    height: 2px;
    position: absolute;
    right: 32%;
    top: 51%;
}

.welcome-grid {
    text-align: left;
}
.welcome-grid h5 {
    font-size: 2.5em;
    color: #000;
    text-transform: capitalize;
    line-height: 1.3;
    letter-spacing: 1px;
}
.welcome-grid p {
    font-size: 1.2em;
    color: #545151;
    margin: 1em 0 1.5em;
}
.welcome-grid ul li {
    color: #777;
    font-size: 1em;
    line-height: 2;
    margin-top: .5em;
    display: inherit;
    letter-spacing: 1px;
}


.welcome-grid ul li {
    list-style: none;
}
.welcome-img {
    padding-top: 1em;
}
.welcome-img1 {
    padding: 0 0.5em 0 0;
}
.welcome-img2 {
    padding: 0 0 0 0.5em;
}
</style>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
    <%@ include file="../include/menu.jsp" %>
<div class="about-section">
<div class="welcome section" id="welcome">
	<div class="container">
		<h3 class="site-title">Welcome</h3>
		<div class="about-top w3ls-agile">
			<div class="col-md-6 red">
				<img class="img-responsive" src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" alt="">
				<div class="welcome-img">
					<div class="col-md-6 col-xs-6 welcome-img1">
						<img class="img-responsive" src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" alt="">
					</div>
					<div class="col-md-6 col-xs-6 welcome-img2">
						<img class="img-responsive" src="https://images.pexels.com/photos/7096/people-woman-coffee-meeting.jpg?w=940&h=650&auto=compress&cs=tinysrgb" alt="">
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-6 come">
				<div class=" welcome-grid">
					<h5>We provide service since <span>2006</span> with proud!</h5>
					<p style="font-size: 17.5px">저희 <span style="color: blue;">미래 디자인</span>은 항상 고객을 먼저 생각하고 고객님께 감동을 드릴 수 있도록
끊임없는 노력과 도전정신으로 나아갈 것입니다.</p>
					<p style="font-size: 17.5px">저희 <span style="color: blue;">미래 디자인</span>은 시장의 성장성 및 가능성이 매우 높음에도 불구하고 동종업체의 경우처럼 수동적이고
소극적인 마케팅 전략에서 벗어나 체계화된 전략을 통해 고객님의 성공창업을 이끌어가는
성공비지니스 파트너가 될 것을 약속드립니다.</p>
						<ul>
							<li><i class="fa fa-hand-o-right" aria-hidden="true"></i>brand manual / 브랜드 메뉴얼</li>
							<li><i class="fa fa-hand-o-right" aria-hidden="true"></i>exterior / 건축 3D 디자인</li>
							<li><i class="fa fa-hand-o-right" aria-hidden="true"></i>interior / 인테리어 3D디자인</li>
						</ul>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
		
	</div> <%@ include file="../include/footer.jsp" %>
</div>
</body>

</html>