<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../board/
boardCs.css">                                                                                                                                                                                                        
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/session_check.jsp" %>

<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnLogout").click(function(){
		location.href="${path}/member_servlet/sessionLogout.do";
	});
});
</script>

</head>

<body>


<%@ include file="../include/menu.jsp" %>
<div class="text-right" style="color:fuchsia;">${sessionScope.userid}님이 접속중입니다.</div>



<a class="nav-link" href="../board/index.jsp">
<button type="button" class="btn btn-primary btn-lg btn-block">프로그램 시작하기</button></a>
<button type="button" id="btnLogout" class="btn btn-primary btn-lg btn-block">로그 아웃</button>
<br>
<h2>${sessionScope.message}</h2>


</body>
<%@ include file="../include/footer.jsp" %>
</html>