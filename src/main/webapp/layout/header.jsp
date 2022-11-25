<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/headerNav.css" rel="stylesheet" />
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
	<header class="header-wrap">
		<nav class="nav-container">
			<h1 class="logo">
				<a href="gly?command=index"> :)GLY </a>

			</h1>
			<div>
				<ul class="nav-wrap">
					<li class="nav-category"><a href="gly?command=item_all&kind=0" class="nav-link">여성</a></li>
					<li class="nav-category"><a href="gly?command=item_all&kind=1" class="nav-link">남성</a></li>
					<li class="nav-category"><a href="gly?command=item_all&kind=2" class="nav-link">잡화</a></li>
				</ul>
			</div>
			<ul class="nav-wrap" style="margin-left: auto">
				<li class="nav-mymenu nav-search">
					<form method="post" action="gly?command=search">
						<input name="words" type="text" />
						<%--<img src="assets/img/search.png" class="navicon" alt="검색" > --%>
						<input type="submit" value="검색" >
					</form></li>
				<c:choose>
					<c:when test="${empty sessionScope.userInfo}">
						<li><a href="gly?command=login_form">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li class="nav-mymenu">${sessionScope.userInfo.m_name}님</li>
					</c:otherwise>
				</c:choose>
				<!-- <li class="nav-mymenu"><a href="gly?command=login_form"> 로그인</a></li> -->
				<li class="nav-mymenu"><a href="gly?command=logout">로그아웃</a></li>
				<li class="nav-mymenu"><a href="gly?command=mypage"> 마이페이지</a></li>
				<li class="nav-mymenu"><a href="gly?command=wish_list_list">찜</a></li>
				<li class="nav-mymenu"><a href="gly?command=cart_list">쇼핑백 </a></li>
			</ul>

		</nav>
	</header>
</body>
</html>
