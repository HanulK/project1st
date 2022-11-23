<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/mywish.css" rel="stylesheet" type="text/css">
<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">위시리스트</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="title-wrap mt30">
						<h4>위시리스트</h4>
						<p class="txt_line">위시리스트에는 상품이 최대 200개 까지 저장 됩니다.</p>
					</div>
					<div class="table-wrap">
						<table class="tbl_ltype">
							<caption>Backet</caption>
							<colgroup>
								<col style="width: 10px">
								<col>
								<col style="width: 105px">
								<col style="width: 110px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col"><input type="checkbox"></th>
									<th scope="col">상품정보</th>
									<th scope="col">판매가</th>
									<th scope="col">선택</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<td>
										<div class="pt-list-wrap">
											<a href="#"><img class="img_size"
												src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_S01.jpg" alt="상품 이미지"></a>
											<div class="detail-wrap">
												<a href="#"> <span>LÄTT</span> <span class="sb_tlt">울 블렌드 하이넥 탑</span>
												</a>
											</div>
										</div>
									</td>
									<td>
										<div class="price_wrap">
											<span> ￦145,000 </span>
										</div>
									</td>
									<td class="al_middle">
										<div class="btn_wrap">
											<a href="#" class="wt_ss btn">쇼핑백담기</a> <a href="#" class="wt_ss btn">삭제</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
