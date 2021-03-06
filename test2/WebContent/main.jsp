<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<header>
   <nav class="navbar navbar-default navbar-fixed-top">
     <div class="container">
       <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="#">CHOO:D</a>
       </div>
       <div id="navbar" class="collapse navbar-collapse">
         <ul class="nav navbar-nav">
         
           <c:if test="${sessionScope.user_id==null}">
         			<li class="active"><a href="#">Home</a></li>
		           	<li><a href="#">BOARD</a></li>
		           	<li><a href="#contact">Contact</a></li>
           </c:if>
           
           <c:if test="${sessionScope.user_id!=null}">
         			<li class="active"><a href="#">Home</a></li>
		           	<li><a href="${pageContext.request.contextPath}/listView.do?page=1">BOARD</a></li>
		           	<li><a href="#contact">Contact</a></li>
           </c:if>
           
           <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">CONNECT<span class="caret"></span></a>
             <ul class="dropdown-menu" role="menu">

				<c:if test="${sessionScope.user_id==null}">
             		<li><a href="${pageContext.request.contextPath}/userLogin.jsp">login</a></li>
               		<li><a href="${pageContext.request.contextPath}/user/userJoinView.jsp">join</a></li>
               		<li><a href="#">Something else here</a></li>
               	</c:if>
               	
               	<c:if test="${sessionScope.user_id!=null}">
               		<li><a href="${pageContext.request.contextPath}/userSelect.do?user_id=${sessionScope.user_id}">my page</a></li>
               		<li><a href="${pageContext.request.contextPath}/userLogout.do">log out</a></li>
               		<li><a href="#">Something else here</a></li>               
               	</c:if>
               
               <li class="divider"></li>
               <li class="dropdown-header">Nav header</li>
               <li><a href="#">Separated link</a></li>
               <li><a href="#">One more separated link</a></li>
             </ul>
           </li>
         </ul>
       </div><!--/.nav-collapse -->
  </div>
</nav>
</header>
