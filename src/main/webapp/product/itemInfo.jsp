<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
<link href="css/common.css" rel="stylesheet" />
<link href="css/itemInfo.css" rel="stylesheet" />
<link href="css/rateModal.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="/layout/header.jsp"%>
	<%@ include file="/layout/collectRecnetItem.jsp"%>
	<div class="app-container">
		<div id="modal" style="display: none;">
			<div class="modal_content">
				<div id="reviewModal">
					<!-- S. 마일리지 안내-->
					<div class="mileage_info_wrap1906">
						<p class="wrap_heading">상품평 작성 시 추가 마일리지를 드려요!</p>
						<div class="mileage_info_box">
							<div class="review_w">
								<p class="review_w_tit">• 온라인 구매 상품평 작성 시</p>
								<ul>
									<li>
										<div class="ico_mileage1906">정상상품</div>
										<p>
											<strong>정상상품</strong>
											<br />
											구매금액의 <b>0.5%</b>
										</p>
									</li>
									<li>
										<div class="ico_mileage1906">아울렛상품</div>
										<p>
											<strong>아울렛상품</strong>
											<br />
											구매금액의 <b>0.1%</b>
										</p>
									</li>
									<li>
										<div class="ico_mileage1906">포토상품평</div>
										<p>
											<strong>포토상품평</strong>
											<br />
											(상품별 최초)
											<br />
											<b>2,000마일리지</b>
										</p>
									</li>
								</ul>
							</div>
							<div class="best_review">
								<p class="review_w_tit">• 온라인/오프라인 구매</p>
								<ul>
									<li>
										<div class="ico_mileage1906">베스트리뷰</div>
										<p>
											<strong>베스트리뷰</strong>
											<br />
											매월 5명 <b>10만원</b> 바우처
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- E. 마일리지 안내 -->
					<div class="pop_tltwrap2 pb0 customerreviewdiv1905">
						<h3>상품평</h3>
					</div>
					<!-- pop_cnt-->
					<div class="evaluation_list1807">
						<div class="clearfix review_tab1_1807">
							<ul>
								<c:forEach items="${reviewList}" var="ReviewVO">
									<li class="evaluation_view">
										<div class="member_info_bottom">
											<span class="choice">${ReviewVO.m_id}</span>
											<c:choose>
												<c:when test="${ReviewVO.r_score == 5}">●●●●●</c:when>
												<c:when test="${ReviewVO.r_score == 4}">●●●●○</c:when>
												<c:when test="${ReviewVO.r_score == 3}">●●●○○</c:when>
												<c:when test="${ReviewVO.r_score == 2}">●●○○○</c:when>
												<c:when test="${ReviewVO.r_score == 1}">●○○○○</c:when>
											</c:choose>
											<%-- <span class="choice">${ReviewVO.r_score}점</span> --%>
										</div>
										<div class="review_txt_wrap">
											<p class="review_title">${ReviewVO.r_title}</p>
											<p class="review_txt">${ReviewVO.r_text}</p>
											<p class="review_date">${ReviewVO.r_indate}</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<!-- paging -->
					<div class="paging mt30" id="reviewPagingDiv"></div>
					<!-- //paging -->
					<!--// pop_cnt-->
				</div>
				<a href="javascript:void(0);" class="btn_close" id="modal_close_btn">
					<img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="닫기" />
				</a>
			</div>
			<div class="modal_layer"></div>
		</div>
		<div class="info-wrap">
			<!--이미지 -->
			<div class="item_visual" id="imageDiv">
				<ul>
					<c:forEach items="${img_srcs}" var="imgsrcs">
						<li><img src="${imgsrcs.imgSrc}" class="respon_image" alt="${product.p_name}" } /></li>
					</c:forEach>
				</ul>
			</div>
			<!-- 정보 박스 -->
			<article class="item-info-box">
				<div class="info">
					<form method="post" name="productForm">
						<div class="info_sect">
							<h4 class="item_name">
								<span class="name"> ${product.p_name} <input type="hidden" name="productName" value="${product.p_name}" /> <input type="hidden" name="productCode" value="${product.p_id}" />
								</span>
							</h4>
							<div class="flag"></div>
							<p class="price">
								<span> ₩ <fmt:formatNumber value="${product.p_price}" pattern="#,###" />
								</span>
								<input type="hidden" name="productPrice" value="${product.p_price}" />
							</p>
							<p class="selling_point"></p>
							<div class="prod-detail-con-box">
								<strong class="number-code">상품품번 : <span> gly:)${product.p_kind}${product.p_id}</span></strong>
								<div class="round-style">
									<p>${product.p_content}</p>
								</div>
								<div class="fit-info">
									<p class="size-text"></p>
								</div>
							</div>
						</div>
						<!-- 선택 옵션 및 가격 -->
						<!-- <form method="post"> -->
						<div class="item_option_box info_sect" id="color_size">
							<ul class="color_size_qty">
								<li><span class="title">사이즈</span> <c:forEach items="${sizes}" var="sizes">
										<label><input type="radio" name="size" value="${sizes}" /> ${sizes} </label>
									</c:forEach></li>
								<li><span class="title">색상</span> <c:forEach items="${colors}" var="colors">
										<label><input type="radio" name="color" value="${colors}" />${colors}</label>
									</c:forEach></li>
								<li><span class="title">수량</span> <span class="txt" id="numOption"> <span class="qty_sel num">
											<button type="button" name="minusBtn">-</button> <input type="number" id="quantity" name="quantity" value="1" readonly />
											<button type="button" name="plusBtn">+</button>
									</span>
								</span></li>
							</ul>
						</div>
						<div class="btn-wrap">
							<input type="submit" value="장바구니" class="submitBtn" onclick="javascript: form.action='gly?command=cart_insert';">
							<input type="submit" value="바로주문" class="submitBtn buyBtn" onclick="javascript: form.action='gly?command=order_detail&num=D';">
						</div>
					</form>
					<!-- 하단 세부 사항-->
					<div>
						<dl class="toggle_type1">
							<!-- 상품상세 정보창 변경 211027 S -->
							<details>
								<summary>상품상세정보</summary>
								<div class="product-info-211027 detail_contents">
									<h3>상품 추가 정보</h3>
									<p>상기 정보는 주관적 내용이므로 참고해주세요</p>
								</div>
							</details>
							<!-- 상품상세 정보창 변경 211027 E -->
							<details>
								<summary>상품정보제공고시</summary>
								<div class="detail_contents">
									<strong>상품품번 :</strong> gly:)${product.p_kind}${product.p_id}
									<br />
									<strong>품목 :</strong> 의류
									<br />
									<strong>제조국 :</strong> 한국
									<br />
									<strong>제조사 :</strong> (주)한섬
									<br />
									<strong>세탁방법 및 취급 시 주의사항</strong>
									<div class="howToWash renew1907" id="newHowToWash">
										<ul>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/003_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png'" onerror="javascript:onErrorImg(this);" alt="003" /> <span class="code_num">003</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/019_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png'" onerror="javascript:onErrorImg(this);" alt="019" /> <span class="code_num">019</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/049_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png'" onerror="javascript:onErrorImg(this);" alt="049" /> <span class="code_num">049</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/008_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png'" onerror="javascript:onErrorImg(this);" alt="008" /> <span class="code_num">008</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/029_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png'" onerror="javascript:onErrorImg(this);" alt="029" /> <span class="code_num">029</span></li>
										</ul>
										본 제품은 반드시 드라이크리닝 하십시오. 세탁 시 이염, 변색, 탈색될 수 있으니 유의하시기 바랍니다. 단추나 악세서리는 세탁 시 손상될 수 있으므로 은박지로 싸거나 분리하여 주십시오. 특성상 마찰에 의해 올 뜯김 등 원단 손상이 발생할 수 있으니 취급 시 주의하시기 바랍니다.
										<br />
										<br />
									</div>
									<br />
									<strong>품질보증기준</strong>
									<br />
									1. 본 제품은 정부 고시 소비자 분쟁해결 기준에 의거 고객의 정당한 피해를 보상해드립니다.
									<br />
									- 원단 불량, 부자재 불량, 봉제 불량, 사이즈 부정확, 부당 표시(미표시 및 부실표시) 및 소재 구성 부적합으로 인한 세탁 사고 : 구입일로부터 1년 이내분은 무상수리, 교환, 구입가 환불함. (단, 봉제 불량은 1년 경과 후에도 무상 수선 가능)
									<br />
									- 사이즈가 맞지 않거나 디자인, 색상 불만 제품 : 구입 후 7일 이내로서 제품에 손상이 없는 경우 동일 가격, 동일 제품으로 교환 가능.
									<br />
									- 상하의 한 벌(세트/일착)인 경우 한 쪽에만 이상이 있어도 한 벌(세트/일착)로 처리함. 단, 소재 및 디자인이 다른 경우에는 해당 의류만 교환 가능.
									<br />
									2. 소비자 부주의에 의한 제품 훼손, 세탁 잘못으로 인한 변형 및 품질 보증기간(1년)이 경과한 제품에 대해서는 보상의 책임을 지지 않으며, 수선 가능시에는 실비로 수선해드립니다.
									<br />
									3. 제품에 이상이 있는 경우 바로 본사로 연락주시면 수선/교환/환불이 가능하나, 타업체(일반 수선실 등)에서 수선했을 경우는 불가능합니다.
									<br />
									<br />
									<div>
										<p>
											<strong>AS 책임자와 연락처</strong>
											<br />
											㈜한섬/1800-5700
										</p>
									</div>
									<br />
									위 내용은 상품정보제공 고시에 따라 작성되었습니다.
								</div>
							</details>
							<!-- 2021.08.10 화장품 상품인 경우 실측사이즈 영역 미노출 -->
							<details>
								<summary>실측사이즈</summary>
								<div class="ko realsize_img SZ01"></div>
								<font color="red"> <strong> 원단, 측정방법에 따라 약간의 오차 가능성이 있습니다.</strong>
								</font>
								<div class="timehomme_pants_fit" style="display: none"></div>
							</details>
							<details>
								<summary>배송 및 교환/반품</summary>
								<div class="detail_contents">
									<p class="tit">배송안내</p>
									<dl class="info_tbl">
										<dt>배송방식 :</dt>
										<dd>우체국택배, CJ대한통운, 로젠택배</dd>
										<dt>배송지역 :</dt>
										<dd>전국 (일부 지역 제외)</dd>
										<dt>배송정보 :</dt>
										<dd>평균 입금완료일 기준 2-4일 소요됩니다 (토/일/공휴일 제외)</dd>
										<dt>배송비 :</dt>
										<dd>
											실결제금액 기준 30,000원 이상 결제 시 무료배송
											<br />
											30,000원 미만 결제 시 2,500원(기본 배송비)
											<br />
											* 실결제금액이란, 쿠폰/바우처 할인액 및
											<br />
											&nbsp; 한섬마일리지/H.Point 사용 금액을 제외한 금액입니다.
											<br />
											&nbsp;&nbsp;(e-money 사용은 실결제금액에 포함)
											<br />
											* 도서산간 지역은 3,000원의 별도 배송비가 부과됩니다.
											<br />
											* 일부 도서지역은 도선료가 부가될 수 있습니다.
										</dd>
									</dl>
									<p class="tit mt20">교환 및 반품안내</p>
									<!-- 교환/반품-->
									<dl class="info_tbl">
										<dt>교환/반품 기간 :</dt>
										<dd>상품 수령 후, 7일 이내</dd>
										<dt>교환절차 :</dt>
										<dd style="letter-spacing: -0.2px">
											사이즈 및 상품불량 교환만 가능(색상교환 불가)하며 교환을 원하실 경우
											<br />
											고객센터로 문의해주시기 바랍니다. (교환 재고가 없을 경우, 환불로 안내예정)
											<br />
											- 교환은 배송비 입금 및 상품 입고 확인 이후에 진행됩니다.
											<br />
											화장품은 상품 불량만 교환 가능하며(상품 개봉 후 교환 불가), 고객센터로
											<br />
											문의해주시기 바랍니다.
										</dd>
										<dt>반품절차 :</dt>
										<dd>
											[배송완료] 7일 이내에 마이페이지 주문/배송/취소/반품 메뉴에서
											<br />
											[반품신청] 버튼을 클릭 시 가능합니다.
										</dd>
										<dt>교환/반품 배송비 :</dt>
										<dd style="letter-spacing: -0.4px">
											배송비는 5,000원 이며(반품비는 주문시 배송비 결제 유무에 따라 변동)
											<br />
											상품 불량 등의 이유로 교환/반품하실 경우, 배송비는 무료입니다.
										</dd>
										<dt>교환/반품 불가사유</dt>
										<dd>
											다음의 경우에는 교환/반품이 불가합니다.
											<ol class="numlist">
												<li><span class="num sum">-</span> <span class="txt">교환/반품 기간(상품 수령 후 7일 이내)을 초과하였을 경우</span></li>
												<li><span class="num sum">-</span> <span class="txt">고객님의 요청에 의해 제품 사양이 변경(이니셜 제품, 사이즈 맞춤 제품 등)된 경우</span></li>
												<li><span class="num sum">-</span><span class="txt">제품을 이미 사용하였거나, 제품 일부를 소비하였을 경우</span></li>
												<li><span class="num sum">-</span> <span class="txt">화장품 : 상품 개봉 후 교환/반품 불가. 단 상품 불량(내용물 불량) 혹은 피부 트러블로 인한 반품은 가능(용량 1/3 미만 사용 및 의사소견서 1:1문의 첨부 필수)</span></li>
												<li><span class="num sum">-</span> <span class="txt">식기류 : 제품 수령 후, 비닐포장을 개봉한 경우</span></li>
												<li><span class="num sum">-</span> <span class="txt">고객님의 귀책사유로 인해 회수가 지연될 경우</span></li>
												<li><span class="num sum">-</span> <span class="txt">국내외 환율 변동 등에 의해 가격이 변동되는 제품의 경우</span></li>
												<li><span class="num sum">-</span> <span class="txt">문제소지가 있는 제품을 본사가 아닌, 타 업체(일반 수선실 등)에서 선처리가 된 경우</span></li>
											</ol>
										</dd>
										<dt>교환/반품건 배송</dt>
										<dd>
											교환/반품 시 배송 받으신 박스로 반송하셔야 합니다.
											<br />
											(한섬/오에라/리퀴드퍼퓸바 상품 함께 주문 후 교환/반품 시 각각의 박스에 나눠서 반송해주세요. 한 박스에 함께 동봉하여 반송 시 교환/반품 처리가 불가할 수 있습니다)
										</dd>
									</dl>
									<p class="tit mt20">환불안내</p>
									<p>환불은 반송제품 확인 후 진행됩니다.</p>
									<br />
								</div>
							</details>
						</dl>
					</div>
					<!-- 상품평 -->
					<!-- 상품평 -->
					<div class="info_sect">
						<button id="modal_open_btn"">상품평</button>
					</div>
				</div>
			</article>
		</div>
		<%@ include file="/layout/showRecentItem.jsp"%>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script type="text/javascript" src="js/product/product.js"></script>
	<script type="text/javascript" src="js/product/modal.js"></script>
</body>
</html>