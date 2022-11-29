<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
				<li><a href="#" onclick="#">
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
				</span></li>
			</ul>
		</div>
	</section>
	<!-- 최근본 상품 start -->
</body>
</html>