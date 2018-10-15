<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../board/boardCs.css">
<script src="../include/jquery-3.3.1.min.js"></script>
<%@ include file="../include/header.jsp" %>
<script>
$(function(){
	$("#btnJoin").click(function(){
		// userid=kim&passwd=1234&name=김철수
	  	var param="userid="+$("#userid").val()
	  	+"&passwd="+$("#passwd").val()
	  	+"&name="+$("#name").val();
		$.ajax({
			type: "post",
			url: "/jspPro1224/member_servlet/join.do",
			data: param,
			success: function(){
				alert("가입 완료 되었습니다.");
			}
		});
	});
})

</script>

</head>
<body>
    <%@ include file="../include/menu.jsp" %>




<div class="container">
    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">인사정보프로그램 회원가입</h3>
			 	</div>
			  	<div class="panel-body">
			    	
                    <fieldset>
			    	  	<div class="form-group">
			    		    아이디:<input class="form-control" id=“userid“ placeholder="userid" name="userid" type="text">
			    		</div>
			    		<div class="form-group">
			    			패스워드:<input class="form-control"  id=“passwd“ placeholder="Password" name="passwd" type="password" value="">
			    		</div>
이름:<input class="form-control"  id=“name”>
			    		</div>
			    	
			    	  
			    	<button id="btnJoin"  class="btn btn-lg btn-success btn-block">가입완료</button>
			    	</fieldset>
			      	
                      <hr/>
                    <center><h4>
                    </h4></center>
                   <a href="../ch07/session_login.jsp"><button class="btn btn-lg btn-danger btn-block">로그인</button></a>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../include/footer.jsp" %>
</html>