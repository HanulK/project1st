<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>여성의류</title>
<link href="css/itemWList.css" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 여성>아우터>재킷 -->
<h3 class="cnts_title ou1804">
                 <span id><!-- 정상 브랜드 카테고리 목록 -->
                        <a href="/ko/c/WE/" onclick="GA_Event('카테고리_리스트','카테고리','여성')">
                               여성</a>
                            <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png" alt="location arr">
                            <a href="/ko/c/WE05/" onclick="GA_Event('카테고리_리스트','카테고리','아우터')">
                               아우터</a>
                            <img src="http://cdn.thehandsome.com/_ui/desktop/common/images/products/ou_location_arr.png" alt="location arr">
                            <a href="javascript:void(0);" onclick="GA_Event('카테고리_리스트','카테고리','재킷')">
                               재킷</a>
                            </span>
</h3>

<div class="filterWrap hsDelivery1902">
                    <ul class="clearfix float_left">
                    <!-- 정상용 브랜드 검색 -->
                        <li class="brand"><a href="javascript:void(0);" class="select" onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드</a>
                            <div class="list" style="display: none;">
                                <ul id="category_brand_chip">
                                    <li><input type="checkbox" id="brand_ck1" onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label for="brand_ck1" id="BR01">TIME</label></li>
                            
                                        <li><input type="checkbox" id="brand_ck20" onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
                                        </ul>
                            </div>
                         </li>
                          <li class="color"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','색상');">색상</a>
                            <div class="list list_item4" style="display: none;">
                                <ul class="color_chip clearfix" id="category_color_chip">
                      
                                    </ul>
                            </div>
                        </li> 
                        <li class="size"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈</a>
                            <div class="list list_item3" style="display: none;">
                                <ul class="size_chip clearfix" id="category_size_chip">

                                </ul>
                            </div>
                        </li>
                        <li class="price"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','가격');">가격</a>

                        </li>
                                    
                        <li class="sortby"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span class="current">신상품</span></a>
     
                        </li>
                        
                        <li class="btn"><a href="javascript:reset();" onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a href="javascript:gubunSearch(1);" onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
                    </ul>
                    <div class="items_count float_right">
                        <span class="num">676</span> <span>전체</span>
                    </div>
                </div>
<!--  정렬까지 완료 -->
<div class="items_list cate_item4">
	<ul>
		<li>
			<div class="item_box">
				<a href="#" class="item_info1">
					<span class="item_img">
						<img src = "http://newmedia.thehandsome.com/CM/2C/FW/CM2C9WOT456WM1_SE_T02.jpg">
					</span>
				</a>
				<a href="#" class="item_info2">
					<span class="brand">the CASHMERE</span>
					<span class="title">캐시미어 블렌드 핸드메이드 재킷</span>
					<span class="price">
						<span>
							<span>￦1,250,000</span>
						</span>
					</span>
				</a>
			</div>		
		</li>
	</ul>
</div>

</body>
</html>