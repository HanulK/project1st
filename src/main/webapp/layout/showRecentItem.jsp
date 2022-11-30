<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		LatelyItemRender();
	});

	// null check 함수
	function isNull(obj) {
		 if(obj == '' || obj == null || obj == undefined || obj == NaN){ 
		  	return true;
		 } else {
		  	return false;
		 }
	}
	
	// local storage 저장 함수
	function setLocalStorage(name,obj) {
 		localStorage.setItem(name, obj);
	}
	
	// local storage 삭제 함수
	function removeLocalStorage(name) {
 		localStorage.removeItem(name);
	}
	
	// local storage에서 특정 객체 추출
	function getItemLocalStorage(name) {
 		return localStorage.getItem(name);
	}
	
	function LatelyItemRender() {
 		$("ul.productList").empty();
  
 		if(getItemLocalStorage('latelyItemList') != "null" || isNull(getItemLocalStorage('latelyItemList'))) {
  			var latelyItemList = JSON.parse(getItemLocalStorage('latelyItemList'));
  			var length = latelyItemList.length;

  			$("div.newItemsListContent").css("display","block");
  			
  			for(var i=0; i<LATELY_VIEW_ITEM_MAX_SAVE_COUNT; i++){
  				if(!isNull(latelyItemList[i])) {
  					const price = latelyItemList[i].p_price.toLocaleString('ko-KR');
   					$("ul.productList").append($("<li>")
							.append($("<a>").attr("href","gly?command=product_detail&pid="+latelyItemList[i].p_id)
            				.append($("<img>").attr("src",latelyItemList[i].img_src).attr("alt","최근본상품")))
            				.append($("<span>").attr("class","item_info2").append($("<p>").attr("class","title").append(latelyItemList[i].p_name))
            				.append($("<p>").attr("class","price").text('₩ '+price))));
  				}
  			}
 		} else {
            //상품이 없을경우
  			$("ul.productList").append('<li>찾아본<br>상품이<br>없습니다.</li>');
		 }
	}
	

	
</script> 
<style>
#newItemsListContent>.title {
	padding: 3px 15px;
	margin: 70px 7px 10px 15px;
	font-size: 13px;
}

.productList {
	display: flex;
	padding: 0px;
	width: fit-content;
	margin: 0 auto;
	gap: 10px;
	text-align: center;
}

.productList li img {
	width: 15vw;
}
</style>
</head>
<body>
	<section id="newItemsListContent">
		<h1 class="title">최근 본 상품</h1>
		<div class="hidden_wrap">
			<ul class=" productList">
<!-- 				<li><a href="#" onclick="#">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩995,000</p>
				</span></li>
				<li><a href="javascript:goDetailPage('CS2C7WJC004WZ8');" onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩995,000</p>
				</span></li>
				<li><a href="javascript:goDetailPage('CS2C7WJC004WZ8');" onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩ 995,000</p>
				</span></li>
				<li><a href="javascript:goDetailPage('CS2C7WJC004WZ8');" onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩995,000</p>
				</span></li>
				<li><a href="javascript:goDetailPage('CS2C7WJC004WZ8');" onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩995,000</p>
				</span></li>
				<li><a href="javascript:goDetailPage('CS2C7WJC004WZ8');" onclick="GA_Detail('halatest',$(this));setEcommerceData2('0','RECENT_FROM_DETAIL');">
						<span><img src="http://newmedia.thehandsome.com/CS/2C/FW/CS2C7WJC004WZ8_LN_S01.jpg" alt="최근본 상품" /></span>
					</a> <span class="item_info2">
						<p class="title">울 블렌드 싱글 재킷</p>
						<p class="price">₩995,000</p>
				</span></li> -->
			</ul>
		</div>
	</section>
	<!-- 최근본 상품 start -->
</body>
</html>