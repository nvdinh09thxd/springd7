<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC Select All record</title>
</head>
<body>

	<c:choose>
		<c:when test="${not empty list}">
			<c:forEach items="${list}" var="news">
				<p>${news}</p>
				<hr>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div>
				<p>Data empty</p>
			</div>
		</c:otherwise>
	</c:choose>

</body>
</html>