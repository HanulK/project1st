<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/layout/header.jsp"%>
	<div class="bodywrap">
		<div class="big_banner1903">
			<div class="swiper-container big_banner_inner">
				<ul>
					<li class="swiper-slide">
						<div class="slide-bgimg"
							style="background-image: url(&quot;http://www.thehandsome.com/medias/221111-A-weeklypick-02.jpg?context=bWFzdGVyfGltYWdlc3w2ODYxNHxpbWFnZS9qcGVnfGltYWdlcy9oYjQvaDcyLzkzNDg2MTI0NTY0NzguanBnfGZiNjRkZTdmNWQwMGViYzU5NDg1ZGUwNDVmY2JiNmFiZTgzMGNkYzc3YWZlN2EwM2UzOWY4OTVjM2VhNzU5MTg&quot;);">
							</div>
					</li>
				</ul>
			</div>
		</div>
		<div class="main_container">
			<div class="product_list1903">
				<div class="nbe_cnt new">
					<div class="product_left_menu">
						<h4 class="tit">신상품</h4>
						<ul>
							<li class="newItem"><a href="gly?command=item_all&kind=0">여성</a></li>
							<li class="newItem"><a href="gly?command=item_all&kind=1">남성</a></li>
							<li class="newItem"><a href="gly?command=item_all&kind=2">포인트 ACC.</a></li>
						</ul>
					</div>
					<div class="swiper-container">
						<ul class="swiper-wrapper">
							<c:forEach items="${newProductList}" var="imageVO">
								<li>
									<div class="item_box">
										<a href="#"> <span class="item_img"> <img src="${imageVO.imgSrc}" alt=""
												class="respon_image">
										</span>
										</a> <a href="#" class="item_info2"> <span class="brand">${imageVO.name}</span> <span
											class="price">₩${imageVO.price}</span>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="nbe_cnt best">
					<div class="product_left_menu">
						<h4 class="tit">베스트</h4>
						<ul>
							<li class="newItem"><a href="gly?command=item_all&kind=0">여성</a></li>
							<li class="newItem"><a href="gly?command=item_all&kind=1">남성</a></li>
						</ul>
					</div>
					<div class="swiper-container">
						<ul class="swiper-wrapper">
							<c:forEach items="${bestProductList}" var="imageVO">
								<li>
									<div class="item_box">
										<a href="#"> <span class="item_img"> <img src="${imageVO.imgSrc}" alt=""  class="respon_image">
										</span>
										</a> <a href="#" class="item_info2"> <span class="brand">${imageVO.name}</span> <span
											class="price">₩${imageVO.price}</span>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="/layout/footer.jsp"%>
</html>
