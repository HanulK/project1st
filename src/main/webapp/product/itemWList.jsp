<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
<link href="css/itemWList.css" rel="stylesheet" type="text/css" />
<link href="css/common2.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/searchList.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<%@ include file="/layout/collectRecnetItem.jsp"%>
	<!-- 여성>아우터>재킷 -->
	<div id="bodyWrap" class="app-container">
		<div class="adaptive_wrap">
			<div class="items_list cate_item4">
				<ul id="asyncSearchItem" class="clearfix">
					<c:forEach items="${productList}" var="productVO">
						<li>
							<div class="item_box">
								<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info1"  onclick="javascript:moveItemPage(${productVO.p_id},'${productVO.p_name}','${productVO.p_img_src}', ${productVO.p_price}); return false;" >
									<span class="item_img"> <img src="${productVO.p_img_src}" alt="${productVO.p_img_src}" class="respon_image" />
									</span>
								</a>

								<!-- 상품 정보 셋팅 -->
								<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info2" onclick="javascript:moveItemPage(${productVO.p_id},'${productVO.p_name}','${productVO.p_img_src}', ${productVO.p_price}); return false;" >
									<span class="title"> ${productVO.p_name} </span> <span class="price"> <span> ₩ <fmt:formatNumber value="${productVO.p_price}" pattern="#,###" />
									</span>
									</span> <span class="flag"> <input type="hidden" id="${productVO.p_id}" name="${productVO.p_name}" />
									</span>
								</a>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<!-- //items list -->
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
