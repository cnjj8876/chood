<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="resouces/css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="main.jsp" flush="false"></jsp:include>

    <div class="container" align="center">
		<form class="form-signin" action="userLogin.do" method="post">
				<h2 class="form-signin-heading">Please sign in</h2>
 				<label for="inputEmail" class="sr-only">Email address</label>
	   			<input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus name="user_id">
		   		<label for="inputPassword" class="sr-only">Password</label>
		   		<input type="password" id="inputPassword" class="form-control" placeholder="Password" required name="user_pw">
		   		<div class="checkbox">
	     				<label>
		       					<input type="checkbox" value="remember-me"> Remember me
		     			</label>
		   		</div>
		   		<button class="btn btn-lg btn-default btn-block" type="submit">Sign in</button>
		 </form>
		<button class="btn btn-lg btn-default btn-block btn-sm" type="button" onclick=btn_join_click();>join in</button>
    </div>
    
<jsp:include page="footer.jsp" flush="false"></jsp:include>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src=resouces/js/bootstrap.js></script>
<script src="resouces/js/ie10-viewport-bug-workaround.js"></script>
<script type="text/javascript">

function btn_join_click(){
	location.href = './user/userJoinView.jsp';
}

</script>
</body>
</html>