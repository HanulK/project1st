<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/main.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="big_banner1903">
			<div class="swiper-container big_banner_inner">
				<ul>
					<li class="swiper-slide">
						<div class="slide-bgimg" style="background-image: url(&quot;http://www.thehandsome.com/medias/221111-A-weeklypick-02.jpg?context=bWFzdGVyfGltYWdlc3w2ODYxNHxpbWFnZS9qcGVnfGltYWdlcy9oYjQvaDcyLzkzNDg2MTI0NTY0NzguanBnfGZiNjRkZTdmNWQwMGViYzU5NDg1ZGUwNDVmY2JiNmFiZTgzMGNkYzc3YWZlN2EwM2UzOWY4OTVjM2VhNzU5MTg&quot;);"></div>
					</li>
				</ul>
			</div>
		</div>
		<div class="product_list1903">
			<div class="nbe_cnt new">
				<div class="product_left_menu">
					<h4 class="tit">신상품</h4>
					<ul>
						<li class=""><a href="#">여성</a></li>
						<li class="on"><a href="#">남성</a></li>
						<li class=""><a href="#">포인트 ACC.</a></li>
						<li class=""><a href="#">셀렉티드</a></li>
					</ul>
				</div>
				<div class="swiper-container">
					<ul class="swiper-wrapper">
						<li class="swiper-slide">
							<div class="item_box">
								<a href="#">
									<span class="item_img"> <img src="http://newmedia.thehandsome.com/TH/2C/FW/TH2CBWCT419MP1_DB_W01.jpg/dims/resize/234x353" alt="" name="캐시미어 블렌드 발마칸 코트" class="respon_image">
									</span>
								</a>
								<a href="#" class="item_info2">
									<span class="brand">TIME HOMME</span> <span class="price">₩1,350,000</span>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="nbe_cnt best">
				<div class="product_left_menu">
					<h4 class="tit">베스트</h4>
					<ul>
						<li class="on"><a href="#">여성</a></li>
						<li class=""><a href="#">남성</a></li>
					</ul>
				</div>
				<div class="swiper-container">
					<ul class="swiper-wrapper">
						<li class="swiper-slide">
							<div class="item_box">
								<a href="#">
									<span class="item_img"> <img src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_W01.jpg/dims/resize/234x353" alt="" name="캐시미어 블렌드 발마칸 코트" class="respon_image">
									</span>
								</a>
								<a href="#" class="item_info2">
									<span class="brand">TIME HOMME</span> <span class="price">₩1,350,000</span>
								</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="../layout/footer.jsp"%>
</html>
