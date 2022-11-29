<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
<link rel="stylesheet" href="css/layout.css" />
<link rel="stylesheet" href="css/signupSuccess.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container result-wrapper">
		<section>
			<img src="https://cdn-icons-png.flaticon.com/512/1189/1189175.png" alt="환영이미지">
			<h1>
				<strong>회원가입</strong>이 완료되었습니다.
			</h1>
			<h2>가입해주셔서 감사합니다.</h2>
		</section>
		<section class="btn-wrap">
			<button type="button" class="linkBtn" onclick="location='gly?command=index'">홈으로</button>
			<button type="button" class="linkBtn login" onclick="location='gly?command=login_form'">로그인</button>
		</section>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>