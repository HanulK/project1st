<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/productDetail.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="sub_container">
		<h4>주문 상세정보</h4>
		<div class="order_box">
			<dl>
				<dt>주문일자</dt>
				<dd>2022.06.27</dd>
				<dt>주문번호</dt>
				<dd>2022060279545</dd>
			</dl>
		</div>
		<div class="table-wrap">
			<table class="tbl_ltype">
				<caption>Backet</caption>
				<colgroup>
					<col style="width:60px">
					<col style="width:105px">
					<col style="width:110px">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">상품주문번호</th>
						<th scope="col">상품정보</th>
						<th scope="col">상품금액(수량)</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<div class="price_wrap">
								<span>13551689546 </span>
							</div>
						</td>
						<td>
							<div class="pt-list-wrap">
								<a href="#"><img src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_S01.jpg" alt="상품 이미지"></a>
								<div class="detail-wrap">
									<a href="#">
										<span>LÄTT</span>
										<span class="sb_tlt">울 블렌드 하이넥 탑</span>
									</a>
								</div>
							</div>
						</td>
						<td class="al_middle">
							<div class="price_wrap">
								<span>53,200원</span>
								<span>(1개)</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="price_wrap">
								<span>13551689546 </span>
							</div>
						</td>
						<td>
							<div class="pt-list-wrap">
								<a href="#"><img src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_S01.jpg" alt="상품 이미지"></a>
								<div class="detail-wrap">
									<a href="#">
										<span>LÄTT</span>
										<span class="sb_tlt">울 블렌드 하이넥 탑</span>
									</a>
								</div>
							</div>
						</td>
						<td class="al_middle">
							<div class="price_wrap">
								<span>53,200원</span>
								<span>(1개)</span>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="total_order">
			<dl>
				<dt>주문금액</dt>
				<dd>318,300원</dd>
			</dl>
		</div>
		
	</div>
</body>
</html>
