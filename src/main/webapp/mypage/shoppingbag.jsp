<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/layout/header.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<%-- writer:juhye --%>
<html>
<head>
<link href="css/ shoppingbag.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/common2.css" rel="stylesheet" />
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">쇼핑백</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="mypage-container">
						<div class="orderwrap1807">
							<div class="tbl_info_wrap">
								<p class="cart_top_text"></p>
								<div class="fourpm_pd_ck">
									<div class="input_wrap"></div>
								</div>
							</div>
							<!--shoppingback table-->
							<div class="tblwrap">
								<table class="tbl_ltype">
									<caption>쇼핑백</caption>
									<colgroup>
										<col style="width: 270px" />
										<col style="width: 50px" />
										<col style="width: 140px" />
										<col style="width: 110px" />
									</colgroup>
									<thead>
										<tr>
											<th scope="col">상품정보</th>
											<th scope="col">수량</th>
											<th scope="col">판매가</th>
											<th scope="col">선택</th>
										</tr>
									</thead>
									<tbody>
									<form action="${contextPath}/gly?command=cart_delete"
												method="post">
										<c:forEach items="${cartList}" var="cartVO">
											
											<tr name="entryProductInfo" data-pk="11004809805868"
												data-deliverykind="" data-outofstock="false"
												data-category="WE052">

												<td class="pt_list_wrap">
													<!-- pt_list_all -->
													<div class="pt_list_all">
															<img src="${cartVO.img_src}" alt="" />
														<div class="tlt_wrap">
															<span class="sb_tlt"> ${cartVO.p_name}</span>
															<p class="color_op">
																color : <span name="dcolor">${cartVO.p_color}</span>
																<span class="and_line">/</span> size :
																<span name="dsize"> ${cartVO.p_size}</span>
															</p>
														</div>
													</div> <!-- //pt_list_all-->
												</td>
												<td class="al_middle"><input type="hidden"
													name="entryNumber" value="0" /> <input type="hidden"
													name="productCode" value="O22CAWOT283W_LA_82" /> <input
													type="hidden" name="initialQuantity" value="1" /> <input
													type="hidden" name="chgProductCode" value="" /> <input
													type="hidden" name="curSize" value="82" /> <input
													type="hidden" name="storeId" value="" /> <input
													type="hidden" name="storePickupDate" value="" /> <input
													type="hidden" name="deliveryKind" value="" /> <input
													type="hidden" name="cartDivision" value="" /> <!-- qty_sel -->

													<div>
														<input readonly type="number" min="1" value="${cartVO.c_quantity}"
															name="dquantity" >
													</div></td>
												<td class="al_middle">
													<!-- Price -->
													<div class="price_wrap">
														<span>₩${cartVO.p_price}</span> <input type="hidden"
															name="checkZeroPrice" value="698000.0" />
													</div> <!-- //Price -->
												</td>

												<td class="al_middle">
													<!-- Button size -->
													<div class="btn_wrap">
														<input type="submit" class="btn gray_ss"
															onclick="javascript: form.action='gly?command=order_detail&num=${cartList.size()}';"
															value="주문" /> <input type="submit"
															class="btn wt_ss" value="삭제" />
													</div> <!-- //Button size -->
												</td>
											</tr>
										
										</c:forEach>
										</form>
									</tbody>
								</table>
							</div>
							<!--// shoppingback table-->
							<!--Total wrap-->
							<div class="total_wrap">
								<!-- total -->
								<div class="total_price_wrap">
									<dl>
										<dt>상품 합계</dt>
										<dd>
											<span id="cartDataSubtotal">₩${totalPrice}</span>
										</dd>
										<dt class="delch_wrap">
											<p class="tlt_ship">배송비</p>
										</dt>
										<dd>
											<span id="cartDataDeliveryCost">무료배송</span>
										</dd>
									</dl>
									<dl class="total">
										<dt>합계</dt>
										<dd>
											<span id="cartDataTotalPrice">₩${totalPrice}</span>
										</dd>
									</dl>
								</div>
								<div class="total_count1807">
									<p>
										총 <span id="selectProductCount">${cartList.size()}</span>개 상품
									</p>
								</div>
								<!-- //total -->
							</div>

						</div>
						<!--//order wrap-->
					</div>
					<!--//sub_container-->
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/layout/footer.jsp"%>
</body>

</html>
