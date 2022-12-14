<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<link href="css/rate.css" rel="stylesheet" />
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>πππ¬</title>
</head>
<body>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">μνν</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="my_review_wrap_box">
						<div class="my_review_top_box">
							<!--μΆκ° 190730 -->
							<span class="img">λ² μ€νΈλ¦¬λ·°</span>
							<div class="right_txtbox">
								<h4>μνν μμ±νκ³ , λ² μ€νΈ λ¦¬λ·°μ΄κ° λμ΄λ³΄μΈμ!</h4>
								<p class="fir">μ¨λΌμΈ/μ€νλΌμΈ κ΅¬λ§€ μνν μμ±</p>
								<p>
									λ§€μ 5λͺ <span>10λ§μ</span> λ°μ°μ²
								</p>
							</div>
						</div>
					</div>
					<div class="info">
						<ul class="bul_sty01_li">
							<!--μμ  190730 -->
							<li>λ² μ€νΈ λ¦¬λ·°μ΄λ μ¨λΌμΈ/μ€νλΌμΈμμ κ΅¬λ§€ν μνμ μνν μ μ²΄λ₯Ό λμμΌλ‘ μ μ ν©λλ€.</li>
							<li>ν μΈ, μΏ ν° μ μ© ν μ€κ²°μ κΈμ‘μ΄ 5,000μ μ΄μμΈ μνμ ννμ¬ μ§κΈλ©λλ€.</li>
							<li>ν΅ν©νμμ κ²½μ°, κ΅¬λ§€κΈμ‘μ λ°λΌ μνν μμ± μΆκ° λ§μΌλ¦¬μ§λ₯Ό λλ¦½λλ€. (κ°νΈνμμ λΆκ°)</li>
						</ul>
					</div>
					<!-- Filtering -->
					<div class="search_wrap">
						<form method="post" action="gly?command=rate_filter">
							<legend>μ μ λ³λ‘ λ³΄κΈ°</legend>
							<!-- <input type="number" id="rateScore" name="rateScore" min="1" max="5"> -->
							<label><input type="radio" id="rateScore" name="rateScore" value="1" checked>1</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="2">2</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="3">3</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="4">4</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="5">5</label>
							<input type="submit" name="scoreBtn" value="μ‘°ν">
						</form>

					</div>
					<!-- Table -->
					<div class="review_tab_01">
						<div class="tblwrap">
							<form name="reviewForm" method="post">
								<table class="tbl_ltype my_review_table">
									<!-- <caption>
	                λ΄ μνν λͺ©λ‘
	              </caption> -->
									<colgroup>
										<col style="width: 10px" />
										<col style="width: 70px" />
										<col style="width: 100px" />
										<col style="width: 200px" />
										<col style="width: 10px" />
									</colgroup>
									<thead>
										<tr>
											<th>μνμ΄λ¦</th>
											<th scope="col">μμ±μΌ</th>
											<th scope="col">μ λͺ©</th>
											<th scope="col">λ΄μ©</th>
											<th scope="col">μ­μ </th>
										</tr>
									</thead>
									<tbody id="writeListBody">
										<c:forEach items="${reviewList}" var="ReviewVO">
											<tr>
												<input type="hidden" value="${ReviewVO.p_id}" name="pid">
												<td>
													<a class="review_img" href="gly?command=product_detail&pid=${ReviewVO.p_id}">
													<img  src="${ReviewVO.p_src}">
													<div>${ReviewVO.p_name}</div>
													</a>
												</td>
												<td>${ReviewVO.r_indate} </td>
												<td>${ReviewVO.r_title}</td>
												<td>${ReviewVO.r_text}</td>
												<td>
													<button class="addBtn" onclick="delete_review()">μ­μ </button>
												</td>
												
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</form>
						</div>
					</div>
					<!-- //Table -->
					<!-- paging -->
					<div class="paging prPaging"></div>
					<!-- //paging -->
					<div class="gd_wrap">
						<dl class="gd_list">
							<dt class="grd_inf">μλ΄ λ° μ μμ¬ν­</dt>
							<dd>
								<ul>
									<li>λ§μΌλ¦¬μ§λ λνμ¬λ·μ»΄ ν΅ν©νμλ§ μ λ¦½ κ°λ₯ν©λλ€. (κ°νΈνμ μ λ¦½ λΆκ°)</li>
									<li>μννμ νλ³΄, μ΄λ²€νΈ λ± λ€μν λ°©λ²μΌλ‘ νμ©λ  μ μμ΅λλ€.</li>
									<li>μλμ κ°μ μννμ μ¬μ  λμ μμ΄ λ―Έκ²μλ‘ μ νλ  μ μμΌλ©°, μ§κΈλ λ§μΌλ¦¬μ§λ μλμΌλ‘ νμλ©λλ€.<br />
									<ol>
										<li>λΆλΉ λ¦¬λ·°(μ§μ  μ΄¬μνμ§ μμ μΊ‘μ³ μ¬μ§, ν΄μ λ° μλ³μ΄ λΆκ°λ₯ν λ¦¬λ·°, ν μνμ λν λ¦¬λ·°, μ  3μ μ¬μ§ λμ λ±)</li>
										<li>μ½κ΄ λ° λ²λ₯  μλ°°(λΉμμ΄, νμμ¬μ€ λ±)</li>
										<li>μκΈ° λ΄μ©μ μ€νλ μ¬μ λΌκ³  ν©λ¦¬μ μΌλ‘ νλ¨λλ κ²½μ°</li>
									</ul>
									</li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script type="text/javascript" src="js/review/deleteReview.js"></script>
</body>

</html>

<!-- Seyoung -->