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
<title>개인정보</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

<div class="container" align="center">

<c:set var="board" value="${user}"/>
<a href="./userListView.do?page=${param.page}">목록으로</a>

<table class="table" border="0">
		<tr>
				<td>아이디</td>
				<td>${user.user_id}</td>
		</tr>
		<tr>
				<td>비밀번호</td>
				<td>${user.user_pw}</td>
		</tr>
		<tr>
				<td>핸드폰</td>
				<td>${user.user_phone}</td>
		</tr>
		
		<tr>
			<td>생년월일</td>
			<td>${user.user_regi_num}</td>
		</tr>
		
		<tr>
			<td>가입일자</td>
			<td>${user.dts_insert}</td>
		</tr>
		<tr>
			<td>수정일자</td>			
			<td>${user.dts_update}</td>
		</tr>
		<tr>
			<td>삭제일자</td>			
			<td>${user.dts_delete}</td>
		</tr>
		<tr>
			<td>삭제여부</td>			
			<td>${user.yn_delete}</td>
		</tr>

</table>

<form action="./user/userModifyView.jsp" method="post" >
		<input type="hidden" name=user_id value="${user.user_id}">
		<input type="hidden" name=user_pw value="${user.user_pw}">
		<input type="hidden" name=user_phone value="${user.user_phone}">
		<input type="hidden" name=user_regi_num value="${user.user_regi_num}">
		<input type="hidden" name=page value="${param.page}">
		<input type="submit" value="수정" id="btn_submit1">
</form>

<form action="./userDelete.do?page=${param.page}" method="post" >
		<input type="hidden" name=user_id value="${user.user_id}">
		<input type="hidden" name=user_pw value="${user.user_pw}">
		<input type="hidden" name=page value="${param.page}">
		<input type="submit" value="삭제" id="btn_submit2">
</form>

    </div>


<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./resouces/js/bootstrap.js"></script>
<script src="./resouces/js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>