<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>SC2C</title>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/codingBooster.css">
</head>
<body>
	
	<jsp:include page="nav.jsp"/>
	<jsp:include page="${mainUrl }.jsp"/>
	<jsp:include page="footer.jsp"/>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>
	<c:if test="${msg!=null }">
		<script>
			alert("${msg}");
		</script>
	</c:if>
</body>
</html>
