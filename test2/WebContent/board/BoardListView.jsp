<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./sticky-footer-navbar.css" rel="stylesheet">
<link rel="stylesheet" href="./resouces/css/bootstrap.css">
<title>게시판 목록</title>
</head>
<body>

<jsp:include page="../main.jsp" flush="false"></jsp:include>

<div class="container" align="center">

<%-- <table class="table table-hover">
		<tr>
				<th scope="col">번호</th>
				<th scope="col">코드</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">날짜</th>
				<th scope="col">조회수</th>	
		</tr>
<c:forEach items="${listBoard}" var= "board"  >
		<tr>
			<th>${board.no}</th>
			<td>${board.no_board}</td>
			<td><a href="/test2/listSelect.do?no_board=${board.no_board}&page=${paging.currPage}">${board.title}</a></td>
			<td>${board.id_insert}</td>
			<td>${board.dts_insert}</td>
			<td>${board.cnt}</td>
		</tr>
</c:forEach>
</table> --%>


<c:forEach items="${listBoard}" var= "board"  >
		<hr class="featurette-divider">
		
		<div class="row featurette">
				<div class="col-md-7">
						<h2 class="featurette-heading"><a href="/test2/listSelect.do?no_board=${board.no_board}&page=${paging.currPage}">${board.title}</a><span class="text-muted">${board.id_insert}</span></h2>
						<p class="lead">${board.dts_insert}</p>
				</div>
				<div class="col-md-5">
						<img class="featurette-image img-responsive center-block" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
				</div>
		</div>
</c:forEach>



<br> <label onclick="lableClick();">글쓰기</label>

<!--기본적인 페이징 처리-->
<nav>
		<ul class="pagination">
				<li>
					<c:if test="${paging.pageStartNum!=1}">
						<a href="/test2/listView.do?page=${paging.pageStartNum-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</c:if>
					<c:if test="${paging.pageStartNum==1}">
						<a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a>
					</c:if>					
				 </li>
				  
				<li>
					<c:forEach var="a" begin="${paging.pageStartNum}" end="${paging.pageEndNum}" step="1" >
						<a href="/test2/listView.do?page=${a}">${a}</a>
					</c:forEach>
				</li>
				
				<li>
					<c:if test="${paging.pageEndNum!=paging.totalPageNum}">
						<a href="/test2/listView.do?page=${paging.pageEndNum+1}" aria-label="Next"><span aria-hidden="true">&raquo;</span></a>
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

<script type="text/javascript">
function lableClick(){
	location.href= './board/BoardWriteView.jsp';
}
</script>

</body>
</html>