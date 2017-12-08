<%@page import="java.io.PrintWriter"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content herddde.
        <c:out value="${sessionScope.user_id}"></c:out> 
        </p>
   	</div>
</footer>
