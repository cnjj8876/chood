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
		<form action="../userInsert.do" method="post" class="form-horizontal" name="joinForm">
				<div class="form-group" id="idGroup">
						<label class="col-sm-2 control-label">ID</label>
						<div class="col-sm-4">
								<input type="text" name="user_id" class="form-control" placeholder="ID" 
								maxlength="20" style="ime-mode:disabled">
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
								<input type="button" value="중복체크" class="btn btn-default btn-block" ID="btnConfirm" onclick="user_idConfirm();">
						</div>
				</div>	
				
				<div class="form-group" id="passGroup">
						<label class="col-sm-2 control-label">PASSWORD</label>
						<div class="col-sm-10 has-feedback">
								<input type="password" name="user_pw" class="form-control" 
								placeholder="영문 숫자 조합 최대 15글자" style="ime-mode:disabled" maxlength="15" onkeyup="user_pwConfrim();">
								<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
						</div>
				</div>
				
				<div class="form-group" id="passGroupConfirm">
						<label class="col-sm-2 control-label">PASSWORD 확인</label>
						<div class="col-sm-10">
								<input type="password" name="user_pw_confirm" class="form-control" 
								placeholder="PASSWORD_CONFIRM" style="ime-mode:disabled" maxlength="15">
						</div>
				</div>
				
				<div class="form-group" id="phoneGroup">
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
								<input type="text" name="user_phone" class="form-control" placeholder=" - 제외 핸드폰 전화번호" 
								onkeydown="return onlyPressNumber(event)" maxlength="8" style="ime-mode:disabled" >
						</div>
				</div>

				<div class="form-group" id="regiNumGroup">
						<label class="col-sm-2 control-label">생년월일</label>
						<div class="col-sm-10">
								<input type="text" name="user_regi_num" class="form-control" placeholder="ex) 19900101" 
								onkeydown="return onlyPressNumber(event)" maxlength="8" style="ime-mode:disabled" >
						</div>
				</div>
				
				<div class="form-group">
						<div class = "col-sm-12">
								<input type="button" value="전송" class="form-control" onclick="formGroupIdSubmit();">
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
<script type="text/javascript">

var userPassConfirm=false;
var userIDConfirm=false;

function onlyPressNumber(event){
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39||keyID == 9 ) 
		return;
	else
		return false;
}

function user_pwConfrim(){
	var user_pw = document.joinForm.user_pw;
	var chk1 = /^[a-z\d]{8,12}$/i;  //a-z와 0-9이외의 문자가 있는지 확인
    var chk2 = /[a-z]/i;  //적어도 한개의 a-z 확인
    var chk3 = /\d/;  //적어도 한개의 0-9 확인
		
  	if(chk1.test(user_pw.value) && chk2.test(user_pw.value) && chk3.test(user_pw.value)){
  		document.getElementById("passGroup").className="form-group has-success";
  		userPassConfirm=true;
	}
  	else{
  		document.getElementById("passGroup").className="form-group has-error";
  	}
}

function user_idConfirm(){
	var user_id = document.joinForm.user_id;
	var user_id_2 = document.joinForm.user_id_2;
	if(user_id.value==""){
		return false;
	}
	var userID=user_id.value+user_id_2.value;
 	$.ajax({
		type:"GET",
		url:"../userIDConfirm.do",
		data:{"user_id":userID},
		cache: false,
		dataType:"text",
		success:function(data){
			var result=data.trim();
			if(result==0){
				document.getElementById("btnConfirm").className="btn btn-success";
				alert("사용가능한 ID 입니다");
				userIDConfirm=true;
			}
			else{
				document.getElementById("btnConfirm").className="btn btn-warning";
				alert("이미 존재하는 ID 입니다");				
			}
		}
	});
}


function formGroupIdSubmit(){
	var result = dataCheck();
	
	if(result){
		document.joinForm.submit();
	}
}



function dataCheck(){
	var user_id = document.joinForm.user_id;
	var user_id_2 = document.joinForm.user_id_2;
	var user_pw = document.joinForm.user_pw;
	var user_pw_confirm = document.joinForm.user_pw_confirm;
	var user_phone = document.joinForm.user_phone;
	var user_regi_num = document.joinForm.user_regi_num;

  	if(user_id.value==""){
  		document.getElementById("idGroup").className="form-group has-error";
  		return false;
  	}
  	else{
  		document.getElementById("idGroup").className="form-group has-success";
	}
  	
  	if(!userIDConfirm){
  		alert("ID중복여부 확인 바랍니다.");
  		return false;
  	}
  	
  	if(!userPassConfirm){
  		document.getElementById("passGroup").className="form-group has-error";	
  		return false;
  	}
  	else{
  		document.getElementById("passGroup").className="form-group has-success";	
  	}
  	
  	if(user_pw_confirm.value.length>0&&user_pw.value == user_pw_confirm.value){
  		document.getElementById("passGroupConfirm").className="form-group has-success";
  	}
  	else{
  		document.getElementById("passGroupConfirm").className="form-group has-error";
  		return false;
  	}
  	  	
  	if(user_phone.value.length<8){
  		document.getElementById("phoneGroup").className="form-group has-error";
  		return false;
  	}
  	else{
  		document.getElementById("phoneGroup").className="form-group has-success";
  	}
  	
  	if(user_regi_num.value.length<8){
  		document.getElementById("regiNumGroup").className="form-group has-error";
  		return false;
  	}
  	else{
  		document.getElementById("regiNumGroup").className="form-group has-success";
  	}
  	
  	return true;
}

</script>

</body>
</html>