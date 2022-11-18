<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
	$(".page").load("mypage.jsp");
	});
$(function(){
	$("#order").click(function(){
		$(".page").load("myorders.jsp")
		$("#pageName").text("주문.배송/반품/취소")
	})
})
$(function(){
	$("#wish").click(function(){
		$(".page").load("mywish.jsp")
		$("#pageName").text("위시리스트")
	})
})
$(function(){
	$("#info").click(function(){
		$(".page").load("changeInfo.jsp")
		$("#pageName").text("개인정보 변경 / 탈퇴")
	})
})
$(function(){
	$("#mypage").click(function(){
		$(".page").load("mypage.jsp")
		$("#pageName").text("마이페이지")
	})
})
$(function(){
	$("#qna").click(function(){
		$(".page").load("qna.jsp")
		$("#pageName").text("상품 Q&A")
	})
})
$(function(){
	$("#rate").click(function(){
		$(".page").load("rate.jsp")
		$("#pageName").text("내 상품평")
	})
})
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="bodywrap">
		<h3 id="pageName">마이페이지</h3>
		<div class="container">
			<div class="info-wrap">
				<h3><a href="#" id="mypage">마이페이지</a></h3>
				<div class="info">
					<dl>
						<dt>주문조회</dt>
						<dd><a href="#" id="order">주문/배송/반품/취소</a></dd>
					</dl>
					<dl>
						<dt>나의 상품관리</dt>
						<dd><a href="#" id="wish">위시리스트</a></dd>
					</dl>
					<dl>
						<dt>나의 정보관리</dt>
						<dd><a href="#" id="info">개인정보 변경/탈퇴</a></dd>
					</dl>
					<dl>
						<dt>나의 활동관리</dt>
						<dd><a href="#" id="rate">내 상품평</a></dd>
						<dd><a href="#" id="qna">상품 Q&A</a></dd>
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
			<div class="page">
			</div>
		</div>
	</div>
</body>
</html>
