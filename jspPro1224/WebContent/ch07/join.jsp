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
<h2 id="h21">인사정보시스템</h2>
<h4>회원가입과 로그인</h4>



<table border="1">
  <tr>
    <td>아이디</td>
    <td><input name="userid"class = "form-control"id="userid"></td>
 </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd"class = "form-control" id="passwd"></td>
  </tr>
  <tr>
    <td>이름</td>
    <td><input class = "form-control" id="name"></td>
  </tr>
  <tr>

    <td colspan="2" align="center">
      <button id="btnJoin"  class="btn btn-danger">가입완료</button>
<a href="../ch07/session_login.jsp"><button class="btn btn-info">로그인</button></a>
      
      
    </td>
  </tr>
</table>
</body>
</html>