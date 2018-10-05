<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../board/boardCs.css">
<%@ include file="../include/header.jsp" %>
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
<h2 id="h21">인사정보시스템</h2>
<h4>로그인</h4>
<form method="post" name="form1"
  action="${path}/session_servlet/login.do">
<table border="1">
  <tr>
    <td>아이디</td>
    <td><input name="userid"class = "form-control"></td>
 </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd"class = "form-control"></td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" class="btn btn-info" value="로그인">
     <a href="../ch07/join.jsp"><button type="button" class="btn btn-danger" >회원가입</button></a>  
      
    </td>
  </tr>
</table>
</form>
</body>
</html>