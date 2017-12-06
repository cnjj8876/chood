<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8"/>
<html>
<head>
<title>게시판</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="./resouces/css/bootstrap.css">
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

    <div class="container" align="center">
<c:set var="board" value="${selectBoard}"/>
<a href="./listView.do?page=${param.page}">목록으로</a>


<table class="table" border="0">
		<tr>
				<td>번호</td>
				<td>${board.no}</td>
		</tr>
		<tr>
				<td>번호</td>
				<td>${board.no_board}</td>
		</tr>
		<tr>
				<td>작성자</td>
				<td>${board.id_insert}</td>
		</tr>
		
		<tr>
			<td>제목</td>
			<td>${board.title}</td>
		</tr>
		
		<tr>
			<td>내용</td>
			<td>${board.content}</td>
		</tr>
		<tr>
			<td>첨부파일</td>			
			<td>${board.file_name}</td>
		</tr>
		<tr>
			<td>IMAGE</td>			
			<td><img src="${board.file_path}/${board.file_name}" width="200"></td>
		</tr>
</table>

<form action="./board/BoardModifyView.jsp" method="post" >
		<input type="hidden" name=no value="${board.no}">
		<input type="hidden" name=no_board value="${board.no_board}">
		<input type="hidden" name=title value="${board.title}">
		<input type="hidden" name=content value="${board.content}">
		<input type="hidden" name=file_name value="${board.file_name}">
		<input type="hidden" name=id_insert value="${board.id_insert}">
		<input type="hidden" name=page value="${param.page}">
		<input type="submit" value="수정" id="btn_submit1">
</form>

<form action="./listDelete.do" method="post" >
		<input type="hidden" name=no_board value="${board.no_board}">
		<input type="hidden" name=file_name value="${board.file_name}">
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