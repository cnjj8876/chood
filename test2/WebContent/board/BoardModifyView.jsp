<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>게시판수정</title>
</head>
<body>

<form action="../listUpdate.do" method="post">
		<br><input type="hidden" name=no value="${param.no}">
		<br><input type="hidden" name=no_board value="${param.no_board}">
		<br>제목<input type="text" name=title value="${param.title}">
		<br>내용<input type="text" name=content value="${param.content}">
		<br><input type="hidden" name=id_insert value="${param.id_insert}">
		<br><input type="hidden" name=page value="${param.page}">
		<br><input type="submit" value="전송" id="btn_submit1">
</form>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src=resouces/js/bootstrap.js></script>
</body>
</html>