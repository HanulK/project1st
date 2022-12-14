<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>πππ¬</title>
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
					<!-- S. λ§μΌλ¦¬μ§ μλ΄-->
					<div class="mileage_info_wrap1906">
						<p class="wrap_heading">μνν μμ± μ μΆκ° λ§μΌλ¦¬μ§λ₯Ό λλ €μ!</p>
						<div class="mileage_info_box">
							<div class="review_w">
								<p class="review_w_tit">β’ μ¨λΌμΈ κ΅¬λ§€ μνν μμ± μ</p>
								<ul>
									<li>
										<div class="ico_mileage1906">μ μμν</div>
										<p>
											<strong>μ μμν</strong>
											<br />
											κ΅¬λ§€κΈμ‘μ <b>0.5%</b>
										</p>
									</li>
									<li>
										<div class="ico_mileage1906">μμΈλ μν</div>
										<p>
											<strong>μμΈλ μν</strong>
											<br />
											κ΅¬λ§€κΈμ‘μ <b>0.1%</b>
										</p>
									</li>
									<li>
										<div class="ico_mileage1906">ν¬ν μνν</div>
										<p>
											<strong>ν¬ν μνν</strong>
											<br />
											(μνλ³ μ΅μ΄)
											<br />
											<b>2,000λ§μΌλ¦¬μ§</b>
										</p>
									</li>
								</ul>
							</div>
							<div class="best_review">
								<p class="review_w_tit">β’ μ¨λΌμΈ/μ€νλΌμΈ κ΅¬λ§€</p>
								<ul>
									<li>
										<div class="ico_mileage1906">λ² μ€νΈλ¦¬λ·°</div>
										<p>
											<strong>λ² μ€νΈλ¦¬λ·°</strong>
											<br />
											λ§€μ 5λͺ <b>10λ§μ</b> λ°μ°μ²
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- E. λ§μΌλ¦¬μ§ μλ΄ -->
					<div class="pop_tltwrap2 pb0 customerreviewdiv1905">
						<h3>μνν</h3>
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
												<c:when test="${ReviewVO.r_score == 5}">βββββ</c:when>
												<c:when test="${ReviewVO.r_score == 4}">βββββ</c:when>
												<c:when test="${ReviewVO.r_score == 3}">βββββ</c:when>
												<c:when test="${ReviewVO.r_score == 2}">βββββ</c:when>
												<c:when test="${ReviewVO.r_score == 1}">βββββ</c:when>
											</c:choose>
											<%-- <span class="choice">${ReviewVO.r_score}μ </span> --%>
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
					<img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="λ«κΈ°" />
				</a>
			</div>
			<div class="modal_layer"></div>
		</div>
		<div class="info-wrap">
			<!--μ΄λ―Έμ§ -->
			<div class="item_visual" id="imageDiv">
				<ul>
					<c:forEach items="${img_srcs}" var="imgsrcs">
						<li><img src="${imgsrcs.imgSrc}" class="respon_image" alt="${product.p_name}" } /></li>
					</c:forEach>
				</ul>
			</div>
			<!-- μ λ³΄ λ°μ€ -->
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
								<span> β© <fmt:formatNumber value="${product.p_price}" pattern="#,###" />
								</span>
								<input type="hidden" name="productPrice" value="${product.p_price}" />
							</p>
							<p class="selling_point"></p>
							<div class="prod-detail-con-box">
								<strong class="number-code">μννλ² : <span> gly:)${product.p_kind}${product.p_id}</span></strong>
								<div class="round-style">
									<p>${product.p_content}</p>
								</div>
								<div class="fit-info">
									<p class="size-text"></p>
								</div>
							</div>
						</div>
						<!-- μ ν μ΅μ λ° κ°κ²© -->
						<!-- <form method="post"> -->
						<div class="item_option_box info_sect" id="color_size">
							<ul class="color_size_qty">
								<li><span class="title">μ¬μ΄μ¦</span> <c:forEach items="${sizes}" var="sizes">
										<label><input type="radio" name="size" value="${sizes}" /> ${sizes} </label>
									</c:forEach></li>
								<li><span class="title">μμ</span> <c:forEach items="${colors}" var="colors">
										<label><input type="radio" name="color" value="${colors}" />${colors}</label>
									</c:forEach></li>
								<li><span class="title">μλ</span> <span class="txt" id="numOption"> <span class="qty_sel num">
											<button type="button" name="minusBtn">-</button> <input type="number" id="quantity" name="quantity" value="1" readonly />
											<button type="button" name="plusBtn">+</button>
									</span>
								</span></li>
							</ul>
						</div>
						<div class="btn-wrap">
							<input type="submit" value="μ₯λ°κ΅¬λ" class="submitBtn" onclick="javascript: form.action='gly?command=cart_insert';">
							<input type="submit" value="λ°λ‘μ£Όλ¬Έ" class="submitBtn buyBtn" onclick="javascript: form.action='gly?command=order_detail&num=D';">
						</div>
					</form>
					<!-- νλ¨ μΈλΆ μ¬ν­-->
					<div>
						<dl class="toggle_type1">
							<!-- μνμμΈ μ λ³΄μ°½ λ³κ²½ 211027 S -->
							<details>
								<summary>μνμμΈμ λ³΄</summary>
								<div class="product-info-211027 detail_contents">
									<h3>μν μΆκ° μ λ³΄</h3>
									<p>μκΈ° μ λ³΄λ μ£Όκ΄μ  λ΄μ©μ΄λ―λ‘ μ°Έκ³ ν΄μ£ΌμΈμ</p>
								</div>
							</details>
							<!-- μνμμΈ μ λ³΄μ°½ λ³κ²½ 211027 E -->
							<details>
								<summary>μνμ λ³΄μ κ³΅κ³ μ</summary>
								<div class="detail_contents">
									<strong>μννλ² :</strong> gly:)${product.p_kind}${product.p_id}
									<br />
									<strong>νλͺ© :</strong> μλ₯
									<br />
									<strong>μ μ‘°κ΅­ :</strong> νκ΅­
									<br />
									<strong>μ μ‘°μ¬ :</strong> (μ£Ό)νμ¬
									<br />
									<strong>μΈνλ°©λ² λ° μ·¨κΈ μ μ£Όμμ¬ν­</strong>
									<div class="howToWash renew1907" id="newHowToWash">
										<ul>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/003_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/003.png'" onerror="javascript:onErrorImg(this);" alt="003" /> <span class="code_num">003</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/019_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/019.png'" onerror="javascript:onErrorImg(this);" alt="019" /> <span class="code_num">019</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/049_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/049.png'" onerror="javascript:onErrorImg(this);" alt="049" /> <span class="code_num">049</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/008_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/008.png'" onerror="javascript:onErrorImg(this);" alt="008" /> <span class="code_num">008</span></li>
											<li><img src="http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png" onmouseover="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko2/029_.png'" onmouseout="this.src='http://cdn.thehandsome.com/pc/laundryMark/pc_ko1/029.png'" onerror="javascript:onErrorImg(this);" alt="029" /> <span class="code_num">029</span></li>
										</ul>
										λ³Έ μ νμ λ°λμ λλΌμ΄ν¬λ¦¬λ νμ­μμ€. μΈν μ μ΄μΌ, λ³μ, νμλ  μ μμΌλ μ μνμκΈ° λ°λλλ€. λ¨μΆλ μμΈμλ¦¬λ μΈν μ μμλ  μ μμΌλ―λ‘ μλ°μ§λ‘ μΈκ±°λ λΆλ¦¬νμ¬ μ£Όμ­μμ€. νΉμ±μ λ§μ°°μ μν΄ μ¬ λ―κΉ λ± μλ¨ μμμ΄ λ°μν  μ μμΌλ μ·¨κΈ μ μ£ΌμνμκΈ° λ°λλλ€.
										<br />
										<br />
									</div>
									<br />
									<strong>νμ§λ³΄μ¦κΈ°μ€</strong>
									<br />
									1. λ³Έ μ νμ μ λΆ κ³ μ μλΉμ λΆμν΄κ²° κΈ°μ€μ μκ±° κ³ κ°μ μ λΉν νΌν΄λ₯Ό λ³΄μν΄λλ¦½λλ€.
									<br />
									- μλ¨ λΆλ, λΆμμ¬ λΆλ, λ΄μ  λΆλ, μ¬μ΄μ¦ λΆμ ν, λΆλΉ νμ(λ―Ένμ λ° λΆμ€νμ) λ° μμ¬ κ΅¬μ± λΆμ ν©μΌλ‘ μΈν μΈν μ¬κ³  : κ΅¬μμΌλ‘λΆν° 1λ μ΄λ΄λΆμ λ¬΄μμλ¦¬, κ΅ν, κ΅¬μκ° νλΆν¨. (λ¨, λ΄μ  λΆλμ 1λ κ²½κ³Ό νμλ λ¬΄μ μμ  κ°λ₯)
									<br />
									- μ¬μ΄μ¦κ° λ§μ§ μκ±°λ λμμΈ, μμ λΆλ§ μ ν : κ΅¬μ ν 7μΌ μ΄λ΄λ‘μ μ νμ μμμ΄ μλ κ²½μ° λμΌ κ°κ²©, λμΌ μ νμΌλ‘ κ΅ν κ°λ₯.
									<br />
									- μνμ ν λ²(μΈνΈ/μΌμ°©)μΈ κ²½μ° ν μͺ½μλ§ μ΄μμ΄ μμ΄λ ν λ²(μΈνΈ/μΌμ°©)λ‘ μ²λ¦¬ν¨. λ¨, μμ¬ λ° λμμΈμ΄ λ€λ₯Έ κ²½μ°μλ ν΄λΉ μλ₯λ§ κ΅ν κ°λ₯.
									<br />
									2. μλΉμ λΆμ£Όμμ μν μ ν νΌμ, μΈν μλͺ»μΌλ‘ μΈν λ³ν λ° νμ§ λ³΄μ¦κΈ°κ°(1λ)μ΄ κ²½κ³Όν μ νμ λν΄μλ λ³΄μμ μ±μμ μ§μ§ μμΌλ©°, μμ  κ°λ₯μμλ μ€λΉλ‘ μμ ν΄λλ¦½λλ€.
									<br />
									3. μ νμ μ΄μμ΄ μλ κ²½μ° λ°λ‘ λ³Έμ¬λ‘ μ°λ½μ£Όμλ©΄ μμ /κ΅ν/νλΆμ΄ κ°λ₯νλ, νμμ²΄(μΌλ° μμ μ€ λ±)μμ μμ νμ κ²½μ°λ λΆκ°λ₯ν©λλ€.
									<br />
									<br />
									<div>
										<p>
											<strong>AS μ±μμμ μ°λ½μ²</strong>
											<br />
											γνμ¬/1800-5700
										</p>
									</div>
									<br />
									μ λ΄μ©μ μνμ λ³΄μ κ³΅ κ³ μμ λ°λΌ μμ±λμμ΅λλ€.
								</div>
							</details>
							<!-- 2021.08.10 νμ₯ν μνμΈ κ²½μ° μ€μΈ‘μ¬μ΄μ¦ μμ­ λ―ΈλΈμΆ -->
							<details>
								<summary>μ€μΈ‘μ¬μ΄μ¦</summary>
								<div class="ko realsize_img SZ01"></div>
								<font color="red"> <strong> μλ¨, μΈ‘μ λ°©λ²μ λ°λΌ μ½κ°μ μ€μ°¨ κ°λ₯μ±μ΄ μμ΅λλ€.</strong>
								</font>
								<div class="timehomme_pants_fit" style="display: none"></div>
							</details>
							<details>
								<summary>λ°°μ‘ λ° κ΅ν/λ°ν</summary>
								<div class="detail_contents">
									<p class="tit">λ°°μ‘μλ΄</p>
									<dl class="info_tbl">
										<dt>λ°°μ‘λ°©μ :</dt>
										<dd>μ°μ²΄κ΅­νλ°°, CJλνν΅μ΄, λ‘μ  νλ°°</dd>
										<dt>λ°°μ‘μ§μ­ :</dt>
										<dd>μ κ΅­ (μΌλΆ μ§μ­ μ μΈ)</dd>
										<dt>λ°°μ‘μ λ³΄ :</dt>
										<dd>νκ·  μκΈμλ£μΌ κΈ°μ€ 2-4μΌ μμλ©λλ€ (ν /μΌ/κ³΅ν΄μΌ μ μΈ)</dd>
										<dt>λ°°μ‘λΉ :</dt>
										<dd>
											μ€κ²°μ κΈμ‘ κΈ°μ€ 30,000μ μ΄μ κ²°μ  μ λ¬΄λ£λ°°μ‘
											<br />
											30,000μ λ―Έλ§ κ²°μ  μ 2,500μ(κΈ°λ³Έ λ°°μ‘λΉ)
											<br />
											* μ€κ²°μ κΈμ‘μ΄λ, μΏ ν°/λ°μ°μ² ν μΈμ‘ λ°
											<br />
											&nbsp; νμ¬λ§μΌλ¦¬μ§/H.Point μ¬μ© κΈμ‘μ μ μΈν κΈμ‘μλλ€.
											<br />
											&nbsp;&nbsp;(e-money μ¬μ©μ μ€κ²°μ κΈμ‘μ ν¬ν¨)
											<br />
											* λμμ°κ° μ§μ­μ 3,000μμ λ³λ λ°°μ‘λΉκ° λΆκ³Όλ©λλ€.
											<br />
											* μΌλΆ λμμ§μ­μ λμ λ£κ° λΆκ°λ  μ μμ΅λλ€.
										</dd>
									</dl>
									<p class="tit mt20">κ΅ν λ° λ°νμλ΄</p>
									<!-- κ΅ν/λ°ν-->
									<dl class="info_tbl">
										<dt>κ΅ν/λ°ν κΈ°κ° :</dt>
										<dd>μν μλ Ή ν, 7μΌ μ΄λ΄</dd>
										<dt>κ΅νμ μ°¨ :</dt>
										<dd style="letter-spacing: -0.2px">
											μ¬μ΄μ¦ λ° μνλΆλ κ΅νλ§ κ°λ₯(μμκ΅ν λΆκ°)νλ©° κ΅νμ μνμ€ κ²½μ°
											<br />
											κ³ κ°μΌν°λ‘ λ¬Έμν΄μ£ΌμκΈ° λ°λλλ€. (κ΅ν μ¬κ³ κ° μμ κ²½μ°, νλΆλ‘ μλ΄μμ )
											<br />
											- κ΅νμ λ°°μ‘λΉ μκΈ λ° μν μκ³  νμΈ μ΄νμ μ§νλ©λλ€.
											<br />
											νμ₯νμ μν λΆλλ§ κ΅ν κ°λ₯νλ©°(μν κ°λ΄ ν κ΅ν λΆκ°), κ³ κ°μΌν°λ‘
											<br />
											λ¬Έμν΄μ£ΌμκΈ° λ°λλλ€.
										</dd>
										<dt>λ°νμ μ°¨ :</dt>
										<dd>
											[λ°°μ‘μλ£] 7μΌ μ΄λ΄μ λ§μ΄νμ΄μ§ μ£Όλ¬Έ/λ°°μ‘/μ·¨μ/λ°ν λ©λ΄μμ
											<br />
											[λ°νμ μ²­] λ²νΌμ ν΄λ¦­ μ κ°λ₯ν©λλ€.
										</dd>
										<dt>κ΅ν/λ°ν λ°°μ‘λΉ :</dt>
										<dd style="letter-spacing: -0.4px">
											λ°°μ‘λΉλ 5,000μ μ΄λ©°(λ°νλΉλ μ£Όλ¬Έμ λ°°μ‘λΉ κ²°μ  μ λ¬΄μ λ°λΌ λ³λ)
											<br />
											μν λΆλ λ±μ μ΄μ λ‘ κ΅ν/λ°ννμ€ κ²½μ°, λ°°μ‘λΉλ λ¬΄λ£μλλ€.
										</dd>
										<dt>κ΅ν/λ°ν λΆκ°μ¬μ </dt>
										<dd>
											λ€μμ κ²½μ°μλ κ΅ν/λ°νμ΄ λΆκ°ν©λλ€.
											<ol class="numlist">
												<li><span class="num sum">-</span> <span class="txt">κ΅ν/λ°ν κΈ°κ°(μν μλ Ή ν 7μΌ μ΄λ΄)μ μ΄κ³Όνμμ κ²½μ°</span></li>
												<li><span class="num sum">-</span> <span class="txt">κ³ κ°λμ μμ²­μ μν΄ μ ν μ¬μμ΄ λ³κ²½(μ΄λμ μ ν, μ¬μ΄μ¦ λ§μΆ€ μ ν λ±)λ κ²½μ°</span></li>
												<li><span class="num sum">-</span><span class="txt">μ νμ μ΄λ―Έ μ¬μ©νμκ±°λ, μ ν μΌλΆλ₯Ό μλΉνμμ κ²½μ°</span></li>
												<li><span class="num sum">-</span> <span class="txt">νμ₯ν : μν κ°λ΄ ν κ΅ν/λ°ν λΆκ°. λ¨ μν λΆλ(λ΄μ©λ¬Ό λΆλ) νΉμ νΌλΆ νΈλ¬λΈλ‘ μΈν λ°νμ κ°λ₯(μ©λ 1/3 λ―Έλ§ μ¬μ© λ° μμ¬μκ²¬μ 1:1λ¬Έμ μ²¨λΆ νμ)</span></li>
												<li><span class="num sum">-</span> <span class="txt">μκΈ°λ₯ : μ ν μλ Ή ν, λΉλν¬μ₯μ κ°λ΄ν κ²½μ°</span></li>
												<li><span class="num sum">-</span> <span class="txt">κ³ κ°λμ κ·μ±μ¬μ λ‘ μΈν΄ νμκ° μ§μ°λ  κ²½μ°</span></li>
												<li><span class="num sum">-</span> <span class="txt">κ΅­λ΄μΈ νμ¨ λ³λ λ±μ μν΄ κ°κ²©μ΄ λ³λλλ μ νμ κ²½μ°</span></li>
												<li><span class="num sum">-</span> <span class="txt">λ¬Έμ μμ§κ° μλ μ νμ λ³Έμ¬κ° μλ, ν μμ²΄(μΌλ° μμ μ€ λ±)μμ μ μ²λ¦¬κ° λ κ²½μ°</span></li>
											</ol>
										</dd>
										<dt>κ΅ν/λ°νκ±΄ λ°°μ‘</dt>
										<dd>
											κ΅ν/λ°ν μ λ°°μ‘ λ°μΌμ  λ°μ€λ‘ λ°μ‘νμμΌ ν©λλ€.
											<br />
											(νμ¬/μ€μλΌ/λ¦¬ν΄λνΌνΈλ° μν ν¨κ» μ£Όλ¬Έ ν κ΅ν/λ°ν μ κ°κ°μ λ°μ€μ λλ μ λ°μ‘ν΄μ£ΌμΈμ. ν λ°μ€μ ν¨κ» λλ΄νμ¬ λ°μ‘ μ κ΅ν/λ°ν μ²λ¦¬κ° λΆκ°ν  μ μμ΅λλ€)
										</dd>
									</dl>
									<p class="tit mt20">νλΆμλ΄</p>
									<p>νλΆμ λ°μ‘μ ν νμΈ ν μ§νλ©λλ€.</p>
									<br />
								</div>
							</details>
						</dl>
					</div>
					<!-- μνν -->
					<!-- μνν -->
					<div class="info_sect">
					<details>
						<summary> <button id="modal_open_btn""> μνν</summary>
					</details>
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

<!-- Seyoung, Hanul, Juhye -->