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
<title>𝗚𝗟𝗬</title>
</head>
<body>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">상품평</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="my_review_wrap_box">
						<div class="my_review_top_box">
							<!--추가 190730 -->
							<span class="img">베스트리뷰</span>
							<div class="right_txtbox">
								<h4>상품평 작성하고, 베스트 리뷰어가 되어보세요!</h4>
								<p class="fir">온라인/오프라인 구매 상품평 작성</p>
								<p>
									매월 5명 <span>10만원</span> 바우처
								</p>
							</div>
						</div>
					</div>
					<div class="info">
						<ul class="bul_sty01_li">
							<!--수정 190730 -->
							<li>베스트 리뷰어는 온라인/오프라인에서 구매한 상품의 상품평 전체를 대상으로 선정합니다.</li>
							<li>할인, 쿠폰 적용 후 실결제금액이 5,000원 이상인 상품에 한하여 지급됩니다.</li>
							<li>통합회원의 경우, 구매금액에 따라 상품평 작성 추가 마일리지를 드립니다. (간편회원은 불가)</li>
						</ul>
					</div>
					<!-- Filtering -->
					<div class="search_wrap">
						<form method="post" action="gly?command=rate_filter">
							<legend>점수 별로 보기</legend>
							<!-- <input type="number" id="rateScore" name="rateScore" min="1" max="5"> -->
							<label><input type="radio" id="rateScore" name="rateScore" value="1" checked>1</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="2">2</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="3">3</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="4">4</label>
							<label><input type="radio" id="rateScore" name="rateScore" value="5">5</label>
							<input type="submit" name="scoreBtn" value="조회">
						</form>

					</div>
					<!-- Table -->
					<div class="review_tab_01">
						<div class="tblwrap">
							<form name="reviewForm" method="post">
								<table class="tbl_ltype my_review_table">
									<!-- <caption>
	                내 상품평 목록
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
											<th>상품이름</th>
											<th scope="col">작성일</th>
											<th scope="col">제목</th>
											<th scope="col">내용</th>
											<th scope="col">삭제</th>
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
													<button class="addBtn" onclick="delete_review()">삭제</button>
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
							<dt class="grd_inf">안내 및 유의사항</dt>
							<dd>
								<ul>
									<li>마일리지는 더한섬닷컴 통합회원만 적립 가능합니다. (간편회원 적립 불가)</li>
									<li>상품평은 홍보, 이벤트 등 다양한 방법으로 활용될 수 있습니다.</li>
									<li>아래와 같은 상품평은 사전 동의 없이 미게시로 전환될 수 있으며, 지급된 마일리지는 자동으로 회수됩니다.<br />
									<ol>
										<li>부당 리뷰(직접 촬영하지 않은 캡쳐 사진, 해석 및 식별이 불가능한 리뷰, 타 상품에 대한 리뷰, 제 3자 사진 도움 등)</li>
										<li>약관 및 법률 위배(비속어, 허위사실 등)</li>
										<li>상기 내용에 준하는 사유라고 합리적으로 판단되는 경우</li>
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