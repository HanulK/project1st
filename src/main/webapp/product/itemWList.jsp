<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>여성의류</title>
<link href="css/common2.css" rel="stylesheet" />
<link href="css/searchList.css" rel="stylesheet" type="text/css" />
<link href="css/itemWList.css" rel="stylesheet" type="text/css" />
</head>
<%--writer : juhye--%>
<body>
	<%@ include file="../layout/header.jsp"%>
	<!-- 여성>아우터>재킷 -->
	<div id="bodyWrap" class="app-container">
		<h3 class="cnts_title ou1804">
			<span id> <!-- 정상 브랜드 카테고리 목록 --> <a href="/ko/c/WE/" onclick="GA_Event('카테고리_리스트','카테고리','여성')"> 여성</a> <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png" alt="location arr" /> <a href="/ko/c/WE05/" onclick="GA_Event('카테고리_리스트','카테고리','아우터')"> 아우터</a> <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png" alt="location arr" /> <a href="javascript:void(0);" onclick="GA_Event('카테고리_리스트','카테고리','재킷')"> 재킷</a>
			</span>
		</h3>

		<div class="filterWrap hsDelivery1902">
			<ul class="clearfix float_left">
				<!-- 정상용 브랜드 검색 -->
				<li class="brand"><a href="javascript:void(0);" class="select" onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드</a>
					<div class="list" style="display: none">
						<ul id="category_brand_chip">
							<li><input type="checkbox" id="brand_ck1" onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');" /><label for="brand_ck1" id="BR01">TIME</label></li>

							<li><input type="checkbox" id="brand_ck20" onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');" /><label for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
						</ul>
					</div></li>
				<li class="color"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','색상');">색상</a>
					<div class="list list_item4" style="display: none">
						<ul class="color_chip clearfix" id="category_color_chip"></ul>
					</div></li>
				<li class="size"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈</a>
					<div class="list list_item3" style="display: none">
						<ul class="size_chip clearfix" id="category_size_chip"></ul>
					</div></li>
				<li class="price"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','가격');">가격</a></li>

				<li class="sortby"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','정렬순');">
						정렬순<span class="current">신상품</span>
					</a></li>

				<li class="btn"><a href="javascript:reset();" onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a> <a href="javascript:gubunSearch(1);" onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
			</ul>
			<!-- <div class="items_count float_right"><span class="num">676</span> <span>전체</span></div> -->
		</div>
		<!--  정렬까지 완료 -->
		<div class="items_list cate_item4">
			<ul id="asyncSearchItem" class="clearfix">
				<li>
					<div class="item_box">
						<!-- 인.허가 여부 데이터 -->
						<!-- 이미지 데이터 -->
						<!-- 사이즈 데이터 -->
						<!-- 컬러 데이터 -->
						<!-- 이미지 셋팅 -->
						<a href="${contextPath}/gly?command=product_detail&pid=1" class="item_info1" onclick="beshow_tagging(this);" link="/p/CS2C9WJC012WEH" price="1350000" image="http://newmedia.thehandsome.com/CS/2C/FW/CS2C9WJC012WEH_CM_T01.jpg" prdname="[EUDON CHOI] 베아트리체 재킷" code="CS2C9WJC012WEH">
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
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
