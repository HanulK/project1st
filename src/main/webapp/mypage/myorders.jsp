<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/myorders.css" rel="stylesheet" type="text/css">
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">주문/배송/반품/취소</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="title_wrap mt50">
						<h4>
							상품 주문 목록
							<!-- 상품 주문목록 -->
						</h4>
					</div>
					<div class="tblwrap lncl1812">
						<!-- 클래스추가 181204 -->
						<table class="tbl_ltype review_betterment1905">
							<caption>상품 주문 목록</caption>
							<colgroup class="interval1812">
								<!-- 수정 181204 -->
								<col style="width: 50px">
								<col style="width: 150px">
								<col style="width: 40px">
								<col style="width: 70px">
								<col style="width: 70px">
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
							<tbody id="listBody">
							<c:forEach items="${orderList}" var="orderVO">
								<tr>
									<td>${orderVO.o_id}</td>
									<td>${orderVO.p_name}</td>
									<td>${orderVO.o_quantity}</td>
									<td>
										<span>₩ <fmt:formatNumber value="${orderVO.p_price}" pattern="#,###"/></span>
									</td>
									<c:set var="state" value="${orderVO.o_state}"></c:set>
									<c:if test="${state==0}"><td>입금대기중</td></c:if>
									<c:if test="${state==1}"><td>결제완료</td></c:if>
									<c:if test="${state==2}"><td>배송준비중</td></c:if>
									<c:if test="${state==4}"><td>배송중</td></c:if>
									<c:if test="${state==5}"><td>배송완료</td></c:if>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="gd_wrap mt70">
						<dl class="gd_list com pl0">
							<dt>
								주문 배송 조회 안내
								<!-- 주문 배송 조회 안내 -->
							</dt>
							<dd>
								<ul class="bul_sty01_li">
									<li>한섬마일리지는 배송 완료 후 10일 후 지급 됩니다.<!-- 한섬마일리지는 배송 완료 후 10일 후 지급 됩니다. --></li>
									<li>반품신청은 배송완료 후 7일까지 가능 합니다.<!-- 반품신청은 배송완료 후 7일까지 가능 합니다. --></li>
									<li>배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다.<!-- 배송준비중 상태에서는 주문의 취소/변경이나 주소의 변경이 불가능 합니다. --></li>
									<li>주문 시 사용한 기프트 카드, 한섬마일리지는 모두 동일 수단으로 환불됩니다.<!-- 주문 시 사용한 기프트 카드 , 한섬마일리지는 모두 동일 수단으로 환불됩니다. --></li>
									<li>한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외)<!-- 한섬마일리지는 정상 매장 기준 5%, 아울렛 1% 적립됩니다. (세일상품 제외) --></li>
									<li>10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다.<!-- 10%를 초과하여 할인하는 상품은 마일리지 적립 대상에서 제외됩니다. --></li>
									<li>주문완료 상태까지는 배송지 수정이 가능 합니다.<!-- 주문완료 상태까지는 배송지 수정이 가능 합니다. --></li>
									<li>가상계좌 결제 시 입금대기 상태에서 4시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다.<!-- 가상계좌 결제 시 입금대기 상태에서 24시간 내 입금하지 않으면 자동으로 주문이 취소 됩니다. --></li>
									<li>상세보기 화면에서 증빙서류의 출력이 가능 합니다.<!-- 상세보기 화면에서 증빙서류의 출력이 가능 합니다. --></li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
