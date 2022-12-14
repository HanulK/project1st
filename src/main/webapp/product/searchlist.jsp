<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>πππ¬</title>
<link href="css/common2.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/searchList.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<%@ include file="/layout/collectRecnetItem.jsp"%>
	<div id="bodyWrap" class="app-container">
		<div class="adaptive_wrap">
			<!-- identity κ²°κ³Όλ΄ μ¬κ²μ -->
			<!-- brand_result_search -->
			<div class="br_result_search">
				<!-- result_inner_top -->
				<div class="result_inner_top">
					<c:choose>
						<c:when test="${empty productList}">
						<div class="result_inner_top_left">
						<h2 class="result_tlt">
							<strong class="schr_result">${Title}</strong>
							<p>μ λν κ²μκ²°κ³Όκ° μμ΅λλ€.</p>
						</h2>
						<div class="n_result" > 
							<br>
                             <p>β’ κ²μμ΄λ₯Ό μ νν μλ ₯νμ¨λμ§ νμΈν΄ λ³΄μΈμ</p>
                             <p>β’ λ λ¨μ΄ μ΄μμ΄ κ²μμ΄μΈ κ²½μ° λμ΄μ°κΈ°λ₯Ό νμΈν΄λ³΄μΈμ</p>
                             <p>β’ νκΈμ μμ΄λ‘ μλ ₯νκ±°λ μμ΄λ₯Ό νκΈλ‘ μλ ₯νλμ§ νμΈν΄ λ³΄μΈμ</p>
                             <p>β’ λΈλλλͺμ΄λ μνλͺμΌλ‘ λ€μ κ²μν΄ λ³΄μΈμ</p>
                         </div>
                         </div>
						</c:when>
						<c:otherwise>
							<div class="result_inner_top_left">
								<h2 class="result_tlt">
								<strong class="schr_result">${Title}</strong>
								<p> κ²μκ²°κ³Ό <span id="search_result_keyword_state">μ΄ <b>${count}</b>κ° μν </span></p>
								<br><br></h2>
							<div class="related keyword" style="display: none">
								<p>μ°κ΄κ²μμ΄</p>
								<ul id="search_recommend"></ul>
							</div>
							<div class="style keyword" id="search_style_menu_parent" style="display: none">
							<p>Style Search</p>
							<ul id="search_style_menu"></ul>
						</div>
						</div>
						
						<!-- μνμ΄ μ‘΄μ¬νλ κ²½μ° -->
						<div class="items_list cate_item4">
						<ul id="asyncSearchItem" class="clearfix">
					<c:forEach items="${productList}"  var="productVO">
						<li>
							<div class="item_box">
							<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info1" onclick="javascript:moveItemPage(${productVO.p_id},'${productVO.p_name}','${productVO.p_img_src}', ${productVO.p_price}); return false;" >
								<span class="item_img"> <img src="${productVO.p_img_src}" alt="${productVO.p_img_src}" class="respon_image" />
								</span>
							</a>

							<!-- μν μ λ³΄ μν -->
							<a href="gly?command=product_detail&pid=${productVO.p_id}" class="item_info2" onclick="javascript:moveItemPage(${productVO.p_id},'${productVO.p_img_src}'); return false;" >
								<span class="title"> ${productVO.p_name} </span>
								<span class="price">
									<span> β© <fmt:formatNumber value="${productVO.p_price}" pattern="#,###"/> </span>
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
						
						</c:otherwise>
					</c:choose>
				</div>
				<!--//result_inner_top-->
				<!--result_inner_bottom -->
			</div>
			<!-- //brand_result_search -->

			<div id="transparent_mask_1"></div>

			<!-- sr_editorial-->
			<div class="sr_editorial" id="search_event"></div>

			<!-- μλν λ¦¬μΌ -->
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

<!-- Seyoung, Hanul -->