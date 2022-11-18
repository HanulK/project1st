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
                 <span><!-- 정상 브랜드 카테고리 목록 -->
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
                        <li class="brand"><a href="javascript:void(0);" class="select" onclick="GA_Event('카테고리_리스트','정렬','브랜드');">브랜드<span class="ico_arr">arrow</span></a>
                            <div class="list" style="display: none;">
                                <ul id="category_brand_chip">
                                    <li><input type="checkbox" id="brand_ck1" onclick="GA_Event('카테고리_리스트','정렬','TIME');setOnlineShopBrand(this, 'BR01');"><label for="brand_ck1" id="BR01">TIME</label></li>
                            
                                        <li><input type="checkbox" id="brand_ck20" onclick="GA_Event('카테고리_리스트','정렬','TOM GREYHOUND');setOnlineShopBrand(this, 'BR15');"><label for="brand_ck20" id="BR15">TOM GREYHOUND</label></li>
                                        </ul>
                            </div>
                         </li>
                         <li class="color"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','색상');">색상<span class="ico_arr">arrow</span></a>
                            <div class="list list_item4" style="display: none;">
                                <ul class="color_chip clearfix" id="category_color_chip">
                                <li><a href="javascript:setRepProdColorCode('BEIGE')" style="background:#fae7c4;" onclick="GA_Event('카테고리_리스트','정렬','BEIGE');">BEIGE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BLACK')" style="background:#000000;" onclick="GA_Event('카테고리_리스트','정렬','BLACK');">BLACK</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BLUE')" style="background:#0f45bc;" onclick="GA_Event('카테고리_리스트','정렬','BLUE');">BLUE</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('BROWN')" style="background:#673915;" onclick="GA_Event('카테고리_리스트','정렬','BROWN');">BROWN</a></li>
                                    <li><a href="javascript:setRepProdColorCode('BURGUNDY')" style="background:#741313;" onclick="GA_Event('카테고리_리스트','정렬','BURGUNDY');">BURGUNDY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('CAMEL')" style="background:#876c41;" onclick="GA_Event('카테고리_리스트','정렬','CAMEL');">CAMEL</a></li>
                                    <li><a href="javascript:setRepProdColorCode('GOLD')" style="background:#ffc733;" onclick="GA_Event('카테고리_리스트','정렬','GOLD');">GOLD</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('GREEN')" style="background:#0f6f0e;" onclick="GA_Event('카테고리_리스트','정렬','GREEN');">GREEN</a></li>
                                    <li><a href="javascript:setRepProdColorCode('GREY')" style="background:#444445;" onclick="GA_Event('카테고리_리스트','정렬','GREY');">GREY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('IVORY')" style="background:#fff8d9;" onclick="GA_Event('카테고리_리스트','정렬','IVORY');">IVORY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('KHAKI')" style="background:#465626;" onclick="GA_Event('카테고리_리스트','정렬','KHAKI');">KHAKI</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('LAVENDER')" style="background:#9c81bb;" onclick="GA_Event('카테고리_리스트','정렬','LAVENDER');">LAVENDER</a></li>
                                    <li><a href="javascript:setRepProdColorCode('METAL')" style="background:#9d9fa2;" onclick="GA_Event('카테고리_리스트','정렬','METAL');">METAL</a></li>
                                    <li><a href="javascript:setRepProdColorCode('MINT')" style="background:#95d0ab;" onclick="GA_Event('카테고리_리스트','정렬','MINT');">MINT</a></li>
                                    <li><a href="javascript:setRepProdColorCode('MULTI')" style="background:#534741;" onclick="GA_Event('카테고리_리스트','정렬','MULTI');">MULTI</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('NAVY')" style="background:#061836;" onclick="GA_Event('카테고리_리스트','정렬','NAVY');">NAVY</a></li>
                                    <li><a href="javascript:setRepProdColorCode('OLIVE')" style="background:#5d682d;" onclick="GA_Event('카테고리_리스트','정렬','OLIVE');">OLIVE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('ORANGE')" style="background:#ee6423;" onclick="GA_Event('카테고리_리스트','정렬','ORANGE');">ORANGE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('PINK')" style="background:#ea589b;" onclick="GA_Event('카테고리_리스트','정렬','PINK');">PINK</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('PURPLE')" style="background:#833b95;" onclick="GA_Event('카테고리_리스트','정렬','PURPLE');">PURPLE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('RED')" style="background:#ec1e24;" onclick="GA_Event('카테고리_리스트','정렬','RED');">RED</a></li>
                                    <li><a href="javascript:setRepProdColorCode('SILVER')" style="background:#c0c0c0;" onclick="GA_Event('카테고리_리스트','정렬','SILVER');">SILVER</a></li>
                                    <li><a href="javascript:setRepProdColorCode('SKY')" style="background:#a2d6f3;" onclick="GA_Event('카테고리_리스트','정렬','SKY');">SKY</a></li>
                                    <li class="mr0"><a href="javascript:setRepProdColorCode('VIOLET')" style="background:#4c2b7b;" onclick="GA_Event('카테고리_리스트','정렬','VIOLET');">VIOLET</a></li>
                                    <li><a href="javascript:setRepProdColorCode('WHITE')" class="wt" style="background:#ffffff;" onclick="GA_Event('카테고리_리스트','정렬','WHITE');">WHITE</a></li>
                                    <li><a href="javascript:setRepProdColorCode('YELLOW')" style="background:#ffea0a;" onclick="GA_Event('카테고리_리스트','정렬','YELLOW');">YELLOW</a></li>
                                    </ul>
                            </div>
                        </li>
                        <li class="size"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','사이즈')">사이즈<span class="ico_arr">arrow</span></a>
                            <div class="list list_item3" style="display: none;">
                                <ul class="size_chip clearfix" id="category_size_chip">
                                <li class="mr0"><a href="javascript:setRepSizeEnumCode('XS')" onclick="GA_Event('카테고리_리스트','정렬','XS');">XS</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('S')" onclick="GA_Event('카테고리_리스트','정렬','S');">S</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('M')" onclick="GA_Event('카테고리_리스트','정렬','M');">M</a></li>
                                <li class="mr0"><a href="javascript:setRepSizeEnumCode('L')" onclick="GA_Event('카테고리_리스트','정렬','L');">L</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('XL')" onclick="GA_Event('카테고리_리스트','정렬','XL');">XL</a></li>
                                <li><a href="javascript:setRepSizeEnumCode('FREE')" onclick="GA_Event('카테고리_리스트','정렬','FREE');">FREE</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="price"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','가격');">가격<span class="ico_arr">arrow</span></a>
                            <div class="list" style="display: none;">
                                <ul>
                                    <li><input type="checkbox" id="price_ck1" onclick="GA_Event('카테고리_리스트','정렬','￦100,000 이하');setPriceOrderCode(this, '1')"> <label for="price_ck1" id="lable_ck1"> ￦100,000 이하</label></li>
                                    <li><input type="checkbox" id="price_ck2" onclick="GA_Event('카테고리_리스트','정렬','￦100,000 ~ ￦300,000');setPriceOrderCode(this, '2')"> <label for="price_ck2" id="lable_ck2">￦100,000 ~ ￦300,000</label></li>
                                    <li><input type="checkbox" id="price_ck3" onclick="GA_Event('카테고리_리스트','정렬','￦300,000 ~ ￦500,000');setPriceOrderCode(this, '3')"> <label for="price_ck3" id="lable_ck3">￦300,000 ~ ￦500,000</label></li>
                                    <li><input type="checkbox" id="price_ck4" onclick="GA_Event('카테고리_리스트','정렬','￦500,000 ~ ￦1,000,000');setPriceOrderCode(this, '4')"> <label for="price_ck4" id="lable_ck4">￦500,000 ~ ￦1,000,000</label></li>
                                    <li><input type="checkbox" id="price_ck5" onclick="GA_Event('카테고리_리스트','정렬','￦1,000,000 이상');setPriceOrderCode(this, '5')"> <label for="price_ck5" id="lable_ck5">￦1,000,000 이상</label></li>
                                </ul>
                            </div>
                        </li>
                                    
                        <li class="sortby"><a href="#" class="select" onclick="GA_Event('카테고리_리스트','정렬','정렬순');">정렬순<span class="current">신상품</span><span class="ico_arr">arrow</span></a>
                            <div class="list" style="display: none;">
                                <ul>
                                    <li><a href="javascript:setProductOrderCode('NEW', '신상품');" onclick="GA_Event('카테고리_리스트','정렬','신상품');">신상품</a></li>
                                    <li><a href="javascript:setProductOrderCode('SALES', '판매순');" onclick="GA_Event('카테고리_리스트','정렬','판매순');">판매순</a></li>
                                    <li><a href="javascript:setProductOrderCode('HIGH', '고가순');" onclick="GA_Event('카테고리_리스트','정렬','고가순');">고가순</a></li>
                                    <li><a href="javascript:setProductOrderCode('LOW', '저가순');" onclick="GA_Event('카테고리_리스트','정렬','저가순');">저가순</a></li>
                                    <li><a href="javascript:setProductOrderCode('REVIEW', '평점순');" onclick="GA_Event('카테고리_리스트','정렬','상품평순');">평점순</a></li>
                                    </ul>
                            </div>
                        </li>
                        
                        <li class="btn"><a href="javascript:reset();" onclick="GA_Event('카테고리_리스트','정렬','초기화');">초기화</a><a href="javascript:gubunSearch(1);" onclick="GA_Event('카테고리_리스트','정렬','적용');">적용</a></li>
                    </ul>
                    <div class="items_count float_right">
                        <span class="num">676</span> <span>전체</span>
                    </div>
                </div>

<li>
<div class="item_box">
<a href="/ko/p/TN2CAFOT324W_IV?categoryCode=we051" class="item_info1" onclick="setEcommerceData('0', 'CATEGORY');"> 
            <span class="item_img"> 
                <img src="http://newmedia.thehandsome.com/TN/2C/FW/TN2CAFOT324W_IV_T01.jpg" id="T01_IMG_0" alt="부클레 퍼 재킷" targetcode="TN2CAFOT324W_IV" class="respon_image" onerror="this.src='http://cdn.thehandsome.com/_ui/desktop/common/images/products/no_img3.jpg'"> 
            </span>
 </a>
 <a href="/ko/p/TN2CAFOT324W_IV?categoryCode=we051" class="item_info2" onclick="setEcommerceData('0', 'CATEGORY');"> 
            <span class="brand">TOM GREYHOUND</span> 
            <span class="title">부클레 퍼 재킷</span> 
            <span class="price"><span id="price_TN2CAFOT324W_IV"><span>￦625,000</span></span></span> 
 </a>
 <div class="color_more_wrap"> 
    <a href="javascript:void(0);" class="cl wt" style="background:#fbfaea url('http://newmedia.thehandsome.com/TN/2C/FW/TN2CAFOT324W_IV_C01.jpg/dims/resize/13x14');" onclick="GA_Event('카테고리_리스트','컬러칩','IV')"></a> 
</div>
 <a href="javascript:addWishListClick('TN2CAFOT324W');" class="add_wishlist " id="wish_TN2CAFOT324W" onclick="GA_Category('wish', $(this));" data-value="TN2CAFOT324W_IV">위시리스트 담기</a>
</div>
</li>
</body>
</html>