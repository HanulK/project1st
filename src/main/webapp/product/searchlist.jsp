<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/common2.css" rel="stylesheet" />
<link href="../css/layout.css" rel="stylesheet" />
<link href="../css/searchList.css" rel="stylesheet" />
</head>
<body>
<%@ include file="../layout/header.jsp"%>
	<%@ include file="../layout/header.jsp"%>
	<div id="bodyWrap" class="app-container">
		<div class="adaptive_wrap">
			<!-- identity 결과내 재검색 -->
			<!-- brand_result_search -->
			<div class="br_result_search">
				<!-- result_inner_top -->
				<div class="result_inner_top">
					<div class="result_inner_top_left">
						<h2 class="result_tlt">
							<strong class="schr_result">자켓</strong>
							<p>
								검색결과 <span id="search_result_keyword_state">총 <b>1923</b>개 상품
								</span>
							</p>
						</h2>
						<div class="related keyword" style="display: none">
							<p>연관검색어</p>
							<ul id="search_recommend"></ul>
						</div>
						<div class="style keyword" id="search_style_menu_parent" style="display: none">
							<p>Style Search</p>
							<ul id="search_style_menu"></ul>
						</div>
					</div>

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

			<!-- 상품이 존재하지 않는 경우 -->
			<!--                 <div class="no_result_found" > -->
			<div id="no_found" class="no_result_found" style="display: none">
				<p>
					<!-- 선택한 조건에 맞는 상품이 없습니다.<br>
                      조건을 다시 선택해주세요. -->
					선택한 조건에 맞는 상품이 없습니다.
					<br />
					조건을 다시 선택해주세요.
				</p>
			</div>

			<!-- 상품이 존재하는 경우 -->
			<div class="items_list cate_item4">
				<ul id="asyncSearchItem" class="clearfix">
					<li>
						<div class="item_box">
							<!-- 인.허가 여부 데이터 -->
							<!-- 이미지 데이터 -->
							<!-- 사이즈 데이터 -->
							<!-- 컬러 데이터 -->
							<!-- 이미지 셋팅 -->
							<a href="/p/CS2C9WJC012WEH?area=SearchResult" class="item_info1" onclick="beshow_tagging(this);" link="/p/CS2C9WJC012WEH" price="1350000" image="http://newmedia.thehandsome.com/CS/2C/FW/CS2C9WJC012WEH_CM_T01.jpg" prdname="[EUDON CHOI] 베아트리체 재킷" code="CS2C9WJC012WEH">
								<span class="item_img"> <img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C9WJC012WEH_CM_T01.jpg" alt="http://newmedia.thehandsome.com/CS/2C/FW/CS2C9WJC012WEH_CM_T01.jpg" class="respon_image" />
								</span>
								<!-- 아이템 셋팅 -->
								<span class="item_size" style="display: none" id="item_size0">
									<div id="CS2C9WJC012WEH_CM">
										<span>85</span>
									</div>
								</span>
							</a>

							<!-- 상품 정보 셋팅 -->
							<a href="/p/CS2C9WJC012WEH?area=SearchResult" class="item_info2">
								<span class="brand">FOURM STUDIO</span> <span class="title">[EUDON CHOI] 베아트리체 <!HS>재킷<!HE></span>
								<!-- (오브제 (5W), 클럽모나코 (MM, MF) 일때, 신품번만 세일가격 노출여부 판별 (3번째 자리가 숫자) -->
								<!-- 수입브랜드는 재작업 없음 무조건 삭선 노출 (톰그레이하운드, MUE, 폼스튜디오, 폼맨즈라운지, 폼더스토어, 클럽모나코, 캐시미어띵즈FL)-->
								<span class="price"> <span>￦1,350,000</span>
								</span> <span class="flag"> <input type="hidden" id="productCd0" name="productCd" value="CS2C9WJC012WEH" /> <span class="flag_typ1"> NEW</span> <span class="hsDelivery1902 ch1904" id="hsDelivery0" style="display: none">한섬딜리버리</span>
								</span>
							</a>

							<!-- 컬러칩 셋팅 -->
							<div class="color_more_wrap">
								<a href="javascript:void(0);" class="cl wt" style="background: #a36944 url('http://newmedia.thehandsome.com/CS/2C/FW/CS2C9WJC012WEH_CM_C01.jpg/dims/resize/13x14')"></a>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- //items list -->

			<!-- paging -->
			<div id="paging" class="paging">
				<a href="#prev2" class="prev2">《</a>
				<a href="#prev" class="prev">〈</a>
				<span class="num"><a href="#async" class="on" title="페이징"> 1 </a> <a href="#async" onClick="javascript:doPaging('12');" title="페이징"> 2 </a> <a href="#async" onClick="javascript:doPaging('24');" title="페이징"> 3 </a> <a href="#async" onClick="javascript:doPaging('36');" title="페이징"> 4 </a> <a href="#async" onClick="javascript:doPaging('48');" title="페이징"> 5 </a> <a href="#async" onClick="javascript:doPaging('60');" title="페이징"> 6 </a> <a href="#async" onClick="javascript:doPaging('72');" title="페이징"> 7 </a> <a href="#async" onClick="javascript:doPaging('84');" title="페이징"> 8 </a> <a href="#async" onClick="javascript:doPaging('96');" title="페이징"> 9 </a> <a href="#async" onClick="javascript:doPaging('108');" title="페이징"> 10 </a></span>
				<a href="#next" class="next" onclick="javascript:doPaging('120')">〉</a>
				<a href="#next2" class="next2">》</a>
			</div>
			<!-- //paging -->

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