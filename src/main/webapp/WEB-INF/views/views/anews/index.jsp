<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h3>Tin tức</h3>
<div class="main-content items-new">
<c:url value="/anews/detail" var="urlDetail"></c:url>
	<ul>
		<c:choose>
			<c:when test="${not empty listTinTuc}">
				<c:forEach items="${listTinTuc}" var="news">
					<li>
						<h2>
							<a href="${urlDetail}/${news.idTinTuc}" title="">${news.tenTinTuc}</a>
						</h2>
						<div class="item">
							<p>${news.moTa}</p>
							<div class="clr"></div>
						</div>
					</li>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div>
					<p>Data empty</p>
				</div>
			</c:otherwise>
		</c:choose>

	</ul>
</div>