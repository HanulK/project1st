<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>๐๐๐ฌ</title>
<link href="css/login.css" rel="stylesheet" />
<link href="css/common.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container" style="height: 800px;">
		<h1 class="page-title center">๋ก๊ทธ์ธ</h1>
		<div class="login-container center">
			<section class="login-form">
				<form method="post" action="gly?command=login">
					<legend class="section_title">ํ์</legend>
					<hr />
					<input type="text" placeholder="์์ด๋/์ด๋ฉ์ผ์ ์๋ ฅํ์ธ์." name="login_id" class="login_input" />
					<input type="password" placeholder="๋น๋ฐ๋ฒํธ๋ฅผ ์๋ ฅํ์ธ์." name="login_pw" class="login_input" />
					<input type="submit" value="๋ก๊ทธ์ธ" class="submit-btn" />
				</form>
			</section>
			<section class="signup-section">
				<h4 class="section_title">๋์ฐ๊ธ๋ฆฌ๋ท์ปด ๊ฐํธํ์ ๊ฐ์</h4>
				<p class="txt" style="line-height: 1.5;">๋ณธ์ธ์ธ์ฆ ์ ์ฐจ ์์ด, ๋์ฐ๊ธ๋ฆฌ๋ท์ปด์์ ์ ๊ณตํ๋ ์๋น์ค๋ง ์ ํ์ ์ผ๋ก ์ด์ฉํ  ์ ์๋ ID๋ฅผ ๋ง๋ญ๋๋ค.</p>
				<p class="join_txt2 mt10">
					๋์ฐ๊ธ๋ฆฌ๋ท์ปด์์ ์ฌ์ฉ ๊ฐ๋ฅํ๋ฉฐ, ์คํ๋ผ์ธ ๋งค์ฅ์์๋ ์ฌ์ฉํ  ์ ์์ต๋๋ค.
					<br />
					<span style="color: #c69c6c;">์ฐ๊ธ๋ฆฌ๋ง์ผ๋ฆฌ์ง์ ํ๋๋ฐฑํ์ ๊ทธ๋ฃน H.Point ํํ, ์ฐ๊ธ๋ฆฌ์ ์จ๋ผ์ธ ๋ฉค๋ฒ์ญ ์๋น์ค โTHE ํด๋ฝโ์ ํํ์ ์ ๊ณต๋์ง ์์ต๋๋ค.</span>
				</p>
				<button class="submit-btn" style="font-weight: bold;" onclick="location='gly?command=join_form'">์ฐ๊ธ๋ฆฌ๋ท์ปด ํ์๊ฐ์</button>
			</section>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>

<!-- Seyoung -->