<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/rateModal.css" rel="stylesheet" />
</head>
<body>
	<div id="modal">
		<div class="modal_content">
			<!-- 베스트 리뷰어 안내-->
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
			<div class="pop_tltwrap2 pb0 customerreviewdiv1905">
				<h3>상품평</h3>
				<a href="#;" class="btn_evaluation1905" id="customerReviewWrite" onclick="GA_Event('상품평','상품평 작성하기','클릭');">상품평 작성하기</a>
			</div>
			<!-- pop_cnt-->
			<div class="pop_cnt evaluation_list1807 options">
				<div class="clearfix review_tab1_1807">
					<ul>
						<li class="evaluation_view">
							<div class="member_info_bottom">
								<span class="choice">${m_id}멤버아이디</span> <span class="choice">${r_score}별점</span>
							</div>
							<div class="review_txt_wrap">
								<p class="review_title">${R_title}</p>
								<p class="review_txt">${R_text}</p>
								<p class="choice">${m_indate}작성일</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- paging -->
			<div class="paging mt30" id="reviewPagingDiv"></div>
			<!-- //paging -->
			<!--// pop_cnt-->
			<a href="javascript:void(0);" class="btn_close">
				<img src="http://cdn.thehandsome.com/_ui/desktop/common/images/popup/ico_close.png" alt="닫기">
			</a>
		</div>
		<div class="modal_layer"></div>
	</div>



</body>
</html>