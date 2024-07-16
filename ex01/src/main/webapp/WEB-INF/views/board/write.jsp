<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="nav">
		<%@ include file="../include/nav.jsp"%>
	</div>
	<c:if test = "${msg != 'login_error'}">
	<form method="post">

		<label>제목</label> <input type="text" name="title" /><br /> <label>작성자</label>
		<input type="text" name="writer" value="${member.userName}" readonly="readonly" /><br /> <label>내용</label>
		<textarea cols="50" rows="5" name="content"></textarea>
		<br />

		<button type="submit">작성</button>

	</form>
	</c:if>
	<c:if test = "${msg == 'login_error'} ">
		<p> 로그인이 된 사용자만 작성 가능합니다. </p>
		
		<p><a href="/">홈으로</a>
	</c:if>


</body>
</html>