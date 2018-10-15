<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../board/boardCs.css">
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/menu.jsp" %>
<!-- JSTL -->
<c:if test="${param.message == 'error' }">
  <script>
    alert("아이디 또는 비밀번호가 일치하지 않습니다.");
  </script>
</c:if>

<c:if test="${param.message == 'logout' }">
  <script>
    alert("로그아웃 되었습니다.");
  </script>
</c:if>

</head>
<body>

<div class="container">
    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">인사정보프로그램 로그인</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form method="post" name="form1"
  action="${path}/session_servlet/login.do">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="userid" name="userid" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="passwd" type="password" value="">
			    		</div>
			    	
			    	  
			    	 <input type="submit" class="btn btn-lg btn-success btn-block"  value="로그인">
			    	</fieldset>
			      	</form>
                      <hr/>
                    <center><h4>
                    </h4></center>
                    <input class="btn btn-lg btn-facebook btn-block" type="submit" value="회원가입">
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
<%@ include file="../include/footer.jsp" %>
</html>