<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h3>Thêm tin</h3>
<div class="main-content">
	<form method="post" enctype="multipart/form-data">
		<form:errors path="error.tenTinTuc" cssStyle="color:red; font-style:italic" ></form:errors><br />
		Tên tin: <input type="text" name="tenTinTuc" value="" /><br /><br />
		Danh mục tin:
		<select name="idDanhMucTin">
			<c:forEach items="${listDanhMucTin}" var="cat">
			 	<option value="${cat.idDanhMucTin}">${cat.tenDanhMucTin}</option>		
			</c:forEach>
		</select><br /><br />
		<form:errors path="error.moTa" cssStyle="color:red; font-style:italic" ></form:errors><br />
		Mô tả: <textarea rows="3" cols="20" name="moTa"></textarea><br /><br />
		Hình ảnh: <input type="file" name="hinhanh" /><br /><br />
		<form:errors path="error.chiTiet" cssStyle="color:red; font-style:italic" ></form:errors><br />
		Chi tiết: <textarea rows="5" cols="20" name="chiTiet"></textarea><br /><br />
		
		<input type="submit" name="submit" value="Thêm" /><br /><br />
	</form>
</div>