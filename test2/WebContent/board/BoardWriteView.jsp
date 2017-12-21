<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="../resouces/css/bootstrap.css">
<title>게시판 작성</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>
<div class="container" align="center">
<form action="/test2/listInsert.do" enctype="multipart/form-data" method="post">
	<br>제목:<input type="text" id="title" name="title">
	<br>작성자:<input type="text" id="id_insert" name="id_insert" value="${sessionScope.user_id}">
	<!-- <br>내용:<input type="text" id="content" name="content"> -->
	<br>내용: <textarea rows="10" cols="30" id="content" name="content"></textarea>
	<br>파일:<input type="file" name="fileName">
	<br><input type="submit" value="전송" id="btn_submit1">
</form>
</div>
<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../resouces/js/bootstrap.js"></script>
<script src="../resouces/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>