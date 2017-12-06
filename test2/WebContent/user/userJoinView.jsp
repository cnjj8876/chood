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
<link href="../sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="../resouces/css/bootstrap.css">
<title>회원가입</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

    <div class="container">
		<form action="../userInsert.do" method="post" class="form-horizontal">
				<div class="form-group">
						<label class="col-sm-2 control-label">ID</label>
						<div class="col-sm-4">
								<input type="text" name="user_id" class="form-control" placeholder="ID">
						</div>
						<div class="col-sm-4">
							<select class="form-control" name="user_id_2">
								<option>@gmail.com</option>
								<option>@naver.com</option>
								<option>@daum.net</option>
								<option>@hotmail.net</option>
							</select>
						</div>
						<div class="col-sm-2">
								<input type="button" value="중복체크" class="btn btn-default">
						</div>
				</div>	
				
				<div class="form-group">
						<label class="col-sm-2 control-label">PASSWORD</label>
						<div class="col-sm-10">
								<input type="password" name="user_pw" class="form-control" placeholder="PASSWORD">
						</div>
				</div>
				
				<div class="form-group">
						<label class="col-sm-2 control-label">PASSWORD 확인</label>
						<div class="col-sm-10">
								<input type="password" name="user_pw_confirm" class="form-control" placeholder="PASSWORD_CONFIRM">
						</div>
				</div>
				
				<div class="form-group">
						<label class="col-sm-2 control-label">PHONE</label>
						<div class="col-sm-4">
							<select class="form-control" name="user_phone_first">
								<option>010</option>
								<option>011</option>
								<option>016</option>
								<option>017</option>
								<option>018</option>
							</select>
						</div>
						<div class="col-sm-6">
								<input type="text" name="user_phone" class="form-control" placeholder=" - 제외 핸드폰 전화번호">
						</div>
				</div>
				
				
				<div class="form-group">
						<label class="col-sm-2 control-label">주민번호 앞자리</label>
						<div class="col-sm-10">
								<input type="text" name="user_regi_num" class="form-control" placeholder="ex) 900101">
						</div>
				</div>
				
				<div class="form-group">
						<div class = "col-sm-12">
								<input type="submit" value="전송" class="form-control">
						</div>	
				</div>
		</form>

<!-- 			<br>id	<input type="text" name="user_id">
			<br>password	<input type="text" name="user_pw">
			<br>password_2	<input type="text" name="user_pw_confirm">
			<br>phone	<input type="text" name="user_phone">
			<br>regi_num	<input type="text" name="user_regi_num">
			<br><input type="submit" value="전송"> -->
    </div>
    
<jsp:include page="../footer.jsp" flush="false"></jsp:include>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="../resouces/js/bootstrap.js"></script>
<script src="../resouces/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>