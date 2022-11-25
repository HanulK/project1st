<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
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
								<col style="width: 120px">
								<col>
								<col style="width: 42px">
								<col style="width: 107px">
								<col style="width: 108px">
								<col style="width: 96px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">주문번호</th>
									<th scope="col">상품정보</th>
									<th scope="col" style="padding: 15px 0">수량</th>
									<th scope="col">판매가</th>
									<th scope="col">주문상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${recentOrderList}" var="orderVO">
									<tr>
										<td>${orderVO.o_id}</td>
										<td>${orderVO.p_name}</td>
										<td>${orderVO.o_quantity}</td>
										<td>${orderVO.o_state}</td>
										<td>${orderVO.p_price}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="title-wrap line mt50">
						<h4>위시리스트</h4>
					</div>
					<ul class="wish-wrap">
						<li><a> <img src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_S01.jpg">
								<span class="brand">LATT</span> <span class="tlt">울 블렌드 하이넥 탑</span>
						</a> <span class="price">￦ 145,000</span></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>

</html>
