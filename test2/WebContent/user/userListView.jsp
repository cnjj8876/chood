<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="./resouces/css/bootstrap.css">
<title>회원 리스트</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

<div class="container" align="center">

<div class="table-responsive">
<table class="table">
		<tr>
				<th scope="col">아이디</th>
				<th scope="col">비밀번호</th>
				<th scope="col">전화번호</th>
				<th scope="col">생년월일</th>
				<th scope="col">등록일</th>
				<th scope="col">삭제유무</th>
				<th scope="col">삭제일</th>
				<th scope="col">수정일</th>
		</tr>
		<c:forEach items="${userList}" var= "user"  >
		<tr>
			<td><a href="userSelect.do?user_id=${user.user_id}&page=${paging.currPage}">${user.user_id}</a></td>
			<td>${user.user_pw}</td>
			<td>${user.user_phone}</td>
			<td>${user.user_regi_num}</td>
			<td>${user.dts_insert}</td>
			<td>${user.yn_delete}</td>
			<td>${user.dts_delete}</td>
			<td>${user.dts_update}</td>
		</tr>
		</c:forEach>
</table>
</div>
<!--기본적인 페이징 처리-->
<nav>
		<ul class="pagination">
				<li>
					<c:if test="${paging.pageStartNum!=1}">
						<a href="/test2/userListView.do?page=${paging.pageStartNum-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</c:if>
					<c:if test="${paging.pageStartNum==1}">
						<a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</c:if>					
				 </li>
				  
				<li>
					<c:forEach var="a" begin="${paging.pageStartNum}" end="${paging.pageEndNum}" step="1" >
						<a href="/test2/userListView.do?page=${a}">${a}</a>
					</c:forEach>
				</li>
				
				<li>
					<c:if test="${paging.pageEndNum!=paging.totalPageNum}">
						<a href="/test2/userListView.do?page=${paging.pageEndNum+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
					</c:if>
					<c:if test="${paging.pageEndNum==paging.totalPageNum}">
						<a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
					</c:if>					
				</li>
		</ul>
</nav>
<!--//기본적인 페이징 처리-->
</div>

<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./resouces/js/bootstrap.js"></script>
<script src="./resouces/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>