<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bodywrap">
		<h3>마이페이지</h3>
		<div class="container">
			<div class="info-wrap">
				<h3><a href="#">마이페이지</a></h3>
				<div class="info">
					<dl>
						<dt>주문조회</dt>
						<dd><a href="#">주문/배송/반품/취소</a></dd>
					</dl>
					<dl>
						<dt>혜택관리</dt>
						<dd><a href="#">나의 쿠폰</a></dd>
					</dl>
					<dl>
						<dt>나의 상품관리</dt>
						<dd><a href="#">위시리스트</a></dd>
						<dd><a href="#">재입고 알림</a></dd>
					</dl>
					<dl>
						<dt>나의 정보관리</dt>
						<dd><a href="#">개인정보 변경/탈퇴</a></dd>
						<dd><a href="#">배송지 관리</a></dd>
						<dd><a href="#">원클릭 결제 관리</a></dd>
					</dl>
					<dl>
						<dt>나의 활동관리</dt>
						<dd><a href="#">내 상품평</a></dd>
						<dd><a href="#">상품 Q&A</a></dd>
						<dd><a href="#">1:1 문의</a></dd>
					</dl>
				</div>
				<div class="guide">
					<p>고객센터 운영 안내</p>
					<p>1800-5700
						<span>유료</span>
					</p>
					<p>평일(월~금) <br/>
						am 09:00 ~ pm 18:00
						<span>토/일, 공휴일 휴무</span>
					</p>
					<a href="#">shophelp <br/>
						@thehandsome.com
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
