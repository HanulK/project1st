<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
<link href="css/common2.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/searchList.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div id="bodyWrap" class="app-container">
		<div class="adaptive_wrap">
			<!-- identity 결과내 재검색 -->
			<!-- brand_result_search -->
			<div class="br_result_search">
				<!-- result_inner_top -->
				<div class="result_inner_top">
					<c:choose>
						<c:when test="${empty productList}">
						<div class="result_inner_top_left">
						<h2 class="result_tlt">
							<strong class="schr_result">${Title}</strong>
							<p>에 대한 검색결과가 없습니다.</p>
						</h2>
						<div class="n_result" > 
							<br>
                             <p>• 검색어를 정확히 입력하셨는지 확인해 보세요</p>
                             <p>• 두 단어 이상이 검색어인 경우 띄어쓰기를 확인해보세요</p>
                             <p>• 한글을 영어로 입력했거나 영어를 한글로 입력했는지 확인해 보세요</p>
                             <p>• 브랜드명이나 상품명으로 다시 검색해 보세요</p>
                         </div>
                         </div>
						</c:when>
						<c:otherwise>
							<div class="result_inner_top_left">
								<h2 class="result_tlt">
								<strong class="schr_result">${Title}</strong>
								<p> 검색결과 <span id="search_result_keyword_state">총 <b>${count}</b>개 상품 </span></p>
								<br><br></h2>
							<div class="related keyword" style="display: none">
								<p>연관검색어</p>
								<ul id="search_recommend"></ul>
							</div>
							<div class="style keyword" id="search_style_menu_parent" style="display: none">
							<p>Style Search</p>
							<ul id="search_style_menu"></ul>
						</div>
						</div>
						
						<%-- 결과 내 재검색
						<div class="result_inner_top_right">
						<fieldset>
							<div id="async" class="re_search_box">
								<form name="searchRe" id="searchRe" action="/ko/hssearch/searchCount" method="post" onsubmit="return false;">
									<input type="search" id="reQuery" name="reQuery" value="" onKeypress="javascript:pressCheckRe((event),this);" autocomplete="off" />
									<input type="hidden" id="simbol" value="￦" />
									<input type="hidden" id="rate" value="" />
									<a href="javascript:doSearchRe()" class="btn_search">검색</a>
								</form>
							</div>
						</fieldset>
						</div>
						--%>
						
						<!-- 상품이 존재하는 경우 -->
						<div class="items_list cate_item4">
						<ul id="asyncSearchItem" class="clearfix">
					<c:forEach items="${productList}"  var="productVO">
						<li>
							<div class="item_box">
							<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info1">
								<span class="item_img"> <img src="${productVO.p_img_src}" alt="${productVO.p_img_src}" class="respon_image" />
								</span>
							</a>

							<!-- 상품 정보 셋팅 -->
							<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info2">
								<span class="title"> ${productVO.p_name} </span>
								<span class="price">
									<span> ₩ <fmt:formatNumber value="${productVO.p_price}" pattern="#,###"/> </span>
								</span>
								<span class="flag"> 
								<input type="hidden" id="${productVO.p_id}" name="${productVO.p_name}" /> 
								</span>
							</a>
							</div>
						</li>
					</c:forEach>
					</ul>
			</div>
			<!-- //items list -->
			
			<%--
			<!-- paging -->
			<div id="paging" class="paging">
				<a href="#prev2" class="prev2">《</a>
				<a href="#prev" class="prev">〈</a>
				<span class="num"><a href="#async" class="on" title="페이징"> 1 </a> <a href="#async" onClick="javascript:doPaging('12');" title="페이징"> 2 </a> <a href="#async" onClick="javascript:doPaging('24');" title="페이징"> 3 </a> <a href="#async" onClick="javascript:doPaging('36');" title="페이징"> 4 </a> <a href="#async" onClick="javascript:doPaging('48');" title="페이징"> 5 </a> <a href="#async" onClick="javascript:doPaging('60');" title="페이징"> 6 </a> <a href="#async" onClick="javascript:doPaging('72');" title="페이징"> 7 </a> <a href="#async" onClick="javascript:doPaging('84');" title="페이징"> 8 </a> <a href="#async" onClick="javascript:doPaging('96');" title="페이징"> 9 </a> <a href="#async" onClick="javascript:doPaging('108');" title="페이징"> 10 </a></span>
				<a href="#next" class="next" onclick="javascript:doPaging('120')">〉</a>
				<a href="#next2" class="next2">》</a>
			</div>
			<!-- //paging -->
			 --%>	
						
						</c:otherwise>
					</c:choose>
				</div>
				<!--//result_inner_top-->
				<!--result_inner_bottom -->
			</div>
			<!-- //brand_result_search -->

			<div id="transparent_mask_1"></div>
			<!-- sortby-->
			<!-- <div class="sr_sortby">
          <a href="javascript:void(0);" class="select"><span class="current">최신 상품순</span><span class="ico_arr">arrow</span></a>
          <ul class="sortSearch">
            <li><a href="javascript:void(0);" title="newest" class="on">최신 상품순</a></li>
            <li><a href="javascript:void(0);" title="lowPrice">낮은가격순</a></li>
            <li><a href="javascript:void(0);" title="highPrice">높은가격순</a></li>
            <li><a href="javascript:void(0);" title="sell">판매량순</a></li>
            <li><a href="javascript:void(0);" title="sail">세일상품 우선</a></li>
          </ul>
        </div> -->
			<!-- //sortby-->

			<!-- sr_editorial-->
			<div class="sr_editorial" id="search_event"></div>

			<!-- 에디토리얼 -->
			<div class="sr-relevant-list" id="search_magazine"></div>

			<!-- //sr_editorial-->
			<div class="sr_others" id="search_manyword"></div>
		</div>
	</div>
	<!-- //bodyWrap -->
	<!-- footerWrap -->
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>