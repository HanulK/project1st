<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/shoppingbag.css" rel="stylesheet" />
<link href="../css/layout.css" rel="stylesheet" />
<link href="../css/common2.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container" style="height:800px;">
		<h1 class="page-title center">쇼핑백</h1>
		<div class="shopping_cart_tab1807 tab_a">
			<!-- //장바구니개편 -->
		</div>

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
						<col style="width: 10px" />
						<col />
						<col style="width: 120px" />
						<col style="width: 105px" />
						<col style="width: 140px" />
						<col style="width: 110px" />
					</colgroup>
					<thead>
						<tr>
							<th scope="col">
								<!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 --> <input type="checkbox" id="entryCheckAll" value="cartlist" />
							</th>
							<th scope="col">상품정보</th>
							<th scope="col">수량</th>
							<th scope="col">판매가</th>
							<th scope="col">적립율</th>
							<th scope="col">선택</th>
						</tr>
					</thead>
					<tbody>
						<tr name="entryProductInfo" data-pk="11004809805868" data-deliverykind="" data-outofstock="false" data-category="WE052">
							<td class="frt">
								<!-- 2019.11.07 쇼핑백 진입 시 선택 상품 없도록 수정 -->
								<input type="checkbox" name="cartlist" data-pk="11004809805868" data-division="" data-deliverykind="" value="0" />
							</td>
							<td class="pt_list_wrap">
								<!-- pt_list_all -->
								<div class="pt_list_all">
									<a href="/ko/HANDSOME/WOMEN/OUTER/JUMPER/%EB%9E%A8%EC%8A%A4-%EC%9A%B8-%EB%B8%94%EB%A0%8C%EB%93%9C-%ED%9B%84%EB%93%9C-%EC%A0%90%ED%8D%BC/p/O22CAWOT283W_LA_82" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','램스 울 블렌드 후드 점퍼');">
										<img src="http://newmedia.thehandsome.com/O2/2C/FW/O22CAWOT283W_LA_S01.jpg" alt="" />
									</a>
									<div class="tlt_wrap">
										<a href="/ko/HANDSOME/WOMEN/OUTER/JUMPER/%EB%9E%A8%EC%8A%A4-%EC%9A%B8-%EB%B8%94%EB%A0%8C%EB%93%9C-%ED%9B%84%EB%93%9C-%EC%A0%90%ED%8D%BC/p/O22CAWOT283W_LA_82" class="basket_tlt" onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','램스 울 블렌드 후드 점퍼');">
											<span class="tlt">O'2nd</span> <span class="sb_tlt"> 램스 울 블렌드 후드 점퍼</span>
										</a>

										<p class="color_op">
											color : LAVENDER<span class="and_line">/</span> size : 82
										</p>

										<div class="option_wrap">
											<a href="#none" class="btn_option" id="optOpenLayer^0^O22CAWOT283W_LA" onclick="GA_Event('쇼핑백','옵션변경', '램스 울 블렌드 후드 점퍼')">옵션변경</a>
										</div>
									</div>
								</div>
								<!-- //pt_list_all-->
							</td>
							<td class="al_middle">
								<form id="updateCartForm0" data-cart='{"cartCode" : "436274501","productPostPrice":"698000.0","productName":"램스 울 블렌드 후드 점퍼"}' action="/ko/shoppingbag/update" method="post">
									<input type="hidden" name="entryNumber" value="0" />
									<input type="hidden" name="productCode" value="O22CAWOT283W_LA_82" />
									<input type="hidden" name="initialQuantity" value="1" />
									<input type="hidden" name="chgProductCode" value="" />
									<input type="hidden" name="curSize" value="82" />
									<input type="hidden" name="storeId" value="" />
									<input type="hidden" name="storePickupDate" value="" />
									<input type="hidden" name="deliveryKind" value="" />
									<input type="hidden" name="cartDivision" value="" />
									<!-- qty_sel -->
									<span class="qty_sel num"> <a href="#none" onMouseDown="javascript:AEC_F_D('O22CAWOT283W_LA_82','o',1);" class="left" onclick="GA_Event('쇼핑백', '수량', '-');">이전 버튼</a> <input id="quantity0" name="quantity" type="text" class="mr0" value="1" size="1" maxlength="3" /> <a href="#none" onMouseDown="javascript:AEC_F_D('O22CAWOT283W_LA_82','i',1);" class="right" onclick="GA_Event('쇼핑백', '수량', '+');">다음 버튼</a>
									</span>
									<!-- //qty_sel -->
									<a href="#none" id="QuantityProduct_0" class="btn wt_ss qty_w mr0">변경</a>
									<div>
										<input type="hidden" name="CSRFToken" value="de021073-60b7-41c9-9e00-d1af9817418e" />
									</div>
								</form>
							</td>
							<td class="al_middle">
								<!-- Price -->
								<div class="price_wrap">
									<span>₩698,000</span>
									<input type="hidden" name="checkZeroPrice" value="698000.0" />
								</div>
								<!-- //Price -->
							</td>
							<td class="al_middle">
								<span class="earn">5% (한섬마일리지)</span>
								<br />
								<span class="earn">0.1% (H.Point)</span>
							</td>
							<td class="al_middle">
								<!-- Button size -->
								<div class="btn_wrap">
									<a href="#none" class="btn gray_ss" onclick="callWishListClick('램스 울 블렌드 후드 점퍼',$(this),'O22CAWOT283W_LA_82');" data-value="0">위시리스트</a>
									<a href="#none" id="RemoveProduct_0" class="btn wt_ss" onclick="GA_Event('쇼핑백','삭제','램스 울 블렌드 후드 점퍼');">삭제</a>
								</div>
								<!-- //Button size -->
							</td>
						</tr>
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
							<span id="cartDataSubtotal">₩698,000</span>
						</dd>
						<dt class="delch_wrap">
							<p class="tlt_ship">배송비</p>
						</dt>
						<dd>
							<span id="cartDataDeliveryCost">₩ 0</span>
						</dd>
					</dl>
					<dl class="total">
						<dt>합계</dt>
						<dd>
							<span id="cartDataTotalPrice">₩698,000</span>
						</dd>
					</dl>
				</div>
				<div class="total_count1807">
					<p>
						총 <span id="selectProductCount">1</span>개 상품
					</p>
				</div>
				<!-- //total -->
			</div>
			<!--//Total wrap-->
			<!--button wrap-->
			<div class="btnwrap order" id="checkout_btn_wrap">
				<a href="#;" onclick="selectRemove();">
					<input value="선택상품삭제" class="btn wt" type="button" />
				</a>
				<a href="#;" onclick="checkoutPage();">
					<input value="선택상품 주문하기" class="btn gray mr0" type="button" />
				</a>
			</div>
			<!--//button wrap-->
		</div>
		<!--//order wrap-->
	</div>
	<!--//sub_container-->
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>