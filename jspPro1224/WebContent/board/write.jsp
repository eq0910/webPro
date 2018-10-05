<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="boardCs.css">
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});

</script>
</head>
<body>
<h2>정보등록</h2>
<form name="form1" method="post" 
action="${path}/board_servlet/insert.do" enctype="multipart/form-data">
<table border="1" width="700px" class = "table table-hover">
  <tr>
    <td class = "table-info" >사원번호</td>
    <td><input name="writer" id="writer"></td>
  </tr>
  <tr>
    <td class = "table-info" >이름</td>
    <td><input name="username" id="username" ></td>
  </tr>
  <tr>
    <td class = "table-info" >직급</td>
      <td><input name="job" id="job" ></td>
  </tr>
  <tr>
    <td class = "table-info" >인사카드</td>
    <td><input type="file" name="file1"></td>
  </tr>
  <tr>
    <td class = "table-info" >비밀번호</td>
    <td><input type="password" name="passwd" id="passwd"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class = "table-active">
      <input type="button" value="확인" id="btnSave" class = "btn btn-outline-info">
      
    </td>
  </tr>
</table>
</form>
</body>
</html>