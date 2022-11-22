<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/login.css" rel="stylesheet" />
<link href="../css/common.css" rel="stylesheet" />
<link href="../css/layout.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container">
		<h1 class="page-title center">로그인</h1>
		<div class="login-container center">
			<section class="login-form">
				<form method="post" action="login" name="login-form">
					<legend class="section_title">회원</legend>
					<hr />
					<input type="text" placeholder="아이디/이메일을 입력하세요." name="login_id" class="login_input" />
					<input type="password" placeholder="비밀번호를 입력하세요." name="login_pw" class="login_input" />
					<input type="submit" value="로그인" class="submit-btn" />
				</form>
			</section>
			<section class="signup-section">
				<h4 class="section_title">더우글리닷컴 간편회원 가입</h4>
				<p class="txt" style="line-height: 1.5;">본인인증 절차 없이, 더우글리닷컴에서 제공하는 서비스만 제한적으로 이용할 수 있는 ID를 만듭니다.</p>
				<p class="join_txt2 mt10">
					더우글리닷컴에서 사용 가능하며, 오프라인 매장에서는 사용할 수 없습니다.
					<br />
					<span style="color: #c69c6c;">우글리마일리지와 현대백화점그룹 H.Point 혜택, 우글리의 온라인 멤버십 서비스 ‘THE 클럽’의 혜택은 제공되지 않습니다.</span>
				</p>
				<button class="submit-btn" style="font-weight: bold;" onclick="location.href = 'signUp.jsp' ">우글리닷컴 회원가입</button>
			</section>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>