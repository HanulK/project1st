<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>πππ¬</title>
<link rel="stylesheet" href="css/layout.css" />
<link rel="stylesheet" href="css/signupSuccess.css" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container result-wrapper">
		<section>
			<img src="https://cdn-icons-png.flaticon.com/512/1189/1189175.png" alt="νμμ΄λ―Έμ§">
			<h1>
				<strong>νμκ°μ</strong>μ΄ μλ£λμμ΅λλ€.
			</h1>
			<h2>κ°μν΄μ£Όμμ κ°μ¬ν©λλ€.</h2>
		</section>
		<section class="btn-wrap">
			<button type="button" class="linkBtn" onclick="location='gly?command=index'">νμΌλ‘</button>
			<button type="button" class="linkBtn login" onclick="location='gly?command=login_form'">λ‘κ·ΈμΈ</button>
		</section>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>

<!-- Seyoung -->