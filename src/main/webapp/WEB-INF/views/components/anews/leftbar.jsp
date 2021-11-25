<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>Danh mục tin</h3>
<ul>
	<c:if test="${not empty listDanhMucTin}">
		<c:forEach items="${listDanhMucTin}" var="danhMucTin">
			<li><a href="#" title="">${danhMucTin.getTenDanhMucTin()}</a></li>
		</c:forEach>
	</c:if>

</ul>