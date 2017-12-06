<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="../resouces/css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

    <div class="container" align="center">
		<form action="../userInsert.do" method="post">
			<br>id	<input type="text" name="user_id">
			<br>password	<input type="text" name="user_pw">
			<br>password_2	<input type="text" name="user_pw_confirm">
			<br>phone	<input type="text" name="user_phone">
			<br>regi_num	<input type="text" name="user_regi_num">
			<br><input type="submit" value="전송">
		</form>
    </div>
    
<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../resouces/js/bootstrap.js"></script>
<script src="../resouces/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>