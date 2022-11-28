<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/mypage_menu.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="info-wrap">
		<h4>
			<a href="gly?command=mypage" id="mypage">마이페이지</a>
		</h4>
		<div class="info_wrap">
			<dl>
				<dt>주문조회</dt>
				<dd>
					<a href="gly?command=order_list" id="order">주문/배송/반품/취소</a>
				</dd>
			</dl>
			<dl>
				<dt>나의 상품관리</dt>
				<dd>
					<a href="gly?command=wish_list_list" id="wish">위시리스트</a>
				</dd>
				<dd>
					<a href="gly?command=cart_list" id="wish">쇼핑백</a>

				</dd>
			</dl>
			<dl>
				<dt>나의 정보관리</dt>
				<dd>
					<a href="gly?command=change_info" id="info">개인정보 변경/탈퇴</a>
				</dd>
			</dl>
			<dl>
				<dt>나의 활동관리</dt>
				<dd>
					<a href="gly?command=rate" id="rate">내 상품평</a>
				</dd>
				<dd>
					<a href="gly?command=rate_form" id="qna">상품평 작성</a>
				</dd>
				<dd>
					<a href="gly?command=qna_list" id="qna">상품 Q&A</a>
				</dd>
			</dl>
		</div>
		<div class="guide">
			<p class="tlt">고객센터 운영 안내</p>
			<p class="phone">
				1800-5700 <span style="color: #c69c6d;" class="txt">유료</span>
			</p>
			<p class="txt">
				평일(월~금) <br /> am 09:00 ~ pm 18:00 <span>토/일, 공휴일 휴무</span>
			</p>
			<a href="#">shophelp <br /> @thehandsome.com
			</a>
		</div>
	</div>
</body>
</html>
