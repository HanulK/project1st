<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/productDetail.css" rel="stylesheet" type="text/css" />
<link href="css/shoppingbag.css" rel="stylesheet" type="text/css" />
<link href="css/myorders.css" rel="stylesheet" type="text/css">
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
				<h3 id="pageName">주문/배송/반품/취소</h3>
				<div class="container">
					<%@ include file="menu.jsp"%>
					<section id="my_order_list">
						<article id="each_order_wrap">

							<div class="table-wrap">
								<table class="tbl_ltype">
									<caption style="display: none">주문 상세정보</caption>
									<colgroup>
										<col style="width: 110px" />
										<col style="width: 120px" />
										<col />
										<col style="width: 150px" />
										<col style="width: 150px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품주문번호</th>
											<th scope="col">상품주문일자</th>
											<th scope="col">상품정보</th>
											<th scope="col">상품금액(수량)</th>
											<th scope="col">상품금액(총액)</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="orderVO" items="${orderList}">
											<tr>
												<td>
													<div class="price_wrap">
														<span>${orderVO.o_id} </span>
													</div>
												</td>
												<td>
													<fmt:formatDate value="${orderVO.o_indate}" type="date" />
												</td>
												<td class="pt_list_wrap">
													<div class="pt_list_all">
														<a href="gly?command=product_detail&pid=${orderVO.p_id}">
															<img src="${orderVO.img_src}" alt="상품 썸네일" />
														</a>
														<div class="tlt_wrap">
															<a href="gly?command=product_detail&pid=${orderVO.p_id}">
																<span class="sb_tlt"> ${orderVO.p_name}</span>
															</a>

															<p class="color_op">
																color : ${orderVO.p_color}<span class="and_line">/</span> size : ${orderVO.p_size}
															</p>
														</div>
													</div>
												</td>
												<td class="al_middle">
													<div class="price_wrap">
														<span><fmt:formatNumber value="${orderVO.p_price}" pattern="#,###" /> 원</span> <span>(${orderVO.o_quantity}개)</span>
													</div>
												</td>
												<td>
													<span><fmt:formatNumber value="${orderVO.p_price * orderVO.o_quantity}" pattern="#,###" /> 원</span>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</article>
					</section>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
