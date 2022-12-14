<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">마이페이지</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="profile">
						<span>${sessionScope.userInfo.m_name}님</span>
					</div>
					<div class="title-wrap">
						<h4>최근주문</h4>
						<p>최근 1개월 내 주문하신 내역입니다.</p>
					</div>
					<div class="table-wrap">
						<table class="tbl_ltype">
							<caption>상품평 리스트</caption>
							<colgroup>
								<col style="width: 50px">
								<col style="width: 180px">
								<col style="width: 30px">
								<col style="width: 80px">
								<col style="width: 80px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">주문번호</th>
									<th scope="col">상품정보</th>
									<th scope="col" style="padding: 15px 0">수량</th>
									<th scope="col">판매가</th>
									<th scope="col">리뷰작성</th>
								</tr>
							</thead>
							<tbody>
							
								<c:forEach items="${recentOrderList}" var="orderVO">
								<form action="gly?command=rate_form" method="post">
									<tr>
										<td>${orderVO.o_id}</td>
										<td>${orderVO.p_name}</td>
										<td>${orderVO.o_quantity}</td>
										<td><span>₩<fmt:formatNumber value="${orderVO.p_price}" pattern="#,###"/></span>
										</td>
										<input type="hidden" value="${orderVO.p_id}" name="p_id">
										<td><input value="상품평작성" type="submit" class="addBtn"/></td>
									</tr>
									</form>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>

</html>

<!-- Hansol -->