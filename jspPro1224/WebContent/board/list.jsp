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
	$("#btnWrite").click(function(){
		location.href="${path}/board/write.jsp";
	});
});
</script>

</head>
<body>
<h2 id="sub">인사정보</h2><div class="text-right"style="color:fuchsia;"
>${sessionScope.userid}님이 접속중입니다.</div><br>
<form name="form1" method="post"  
action="${path}/board_servlet/search.do">
<select name="search_option" >
  <option value="writer">사원번호</option>
  <option value="username">이름</option>
  <option value="job">직급</option>
  <option value="all">사원번호+이름+직급</option>
</select>



<input name="keyword">
<button id="btnSearch" >검색</button>
</form>
<button id="btnWrite" class = "btn btn-outline-danger">정보등록</button>
<table border="1" width="900px" class = "table table-hover">
 <tr class = "table-info" class = "table-active">
   <th>번호</th>
   <th>사원번호</th>
   <th>이름</th>
   <th>등록일</th>
   <th>조회수</th>
   <th>인사카드</th>
   <th>다운로드</th>
 </tr>
 <c:forEach var="dto" items="${list}">
 <tr >
   <td class="table-danger">${dto.num}</td>
   <td class="table-success">${dto.writer}</td>
   <td ><a href="${path}/board_servlet/view.do?num=${dto.num}">
   ${dto.username}</a>
   
   <!-- 댓글갯수 표시 -->
   <c:if test="${dto.comment_count > 0}">
     <span style="color:red;">(${dto.comment_count})</span>
   </c:if>
   </td>
   <td>${dto.reg_date}</td>
   <td>${dto.readcount}</td>
   <td align="center">
     <c:if test="${dto.filesize > 0 }">
      <a href="${path}/board_servlet/download.do?num=${dto.num}">
       <img src="../images/file.gif">
      </a> 
     </c:if>
   </td>
  
   <td class="table-warning">${dto.down}</td>
 </tr>
 </c:forEach>
</table>
</body>
</html>