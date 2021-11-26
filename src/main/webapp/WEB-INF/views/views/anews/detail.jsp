<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
	<c:when test="${not empty news}">
		<h3>${news.tenTinTuc}</h3>
		<div class="main-content">
			<p>${news.chiTiet}</p>
		</div>
	</c:when>
	<c:otherwise>
		<div>
			<p>Data empty</p>
		</div>
	</c:otherwise>
</c:choose>