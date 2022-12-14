<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>๐๐๐ฌ</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">๋ง์ดํ์ด์ง</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="profile">
						<span>${sessionScope.userInfo.m_name}๋</span>
					</div>
					<div class="title-wrap">
						<h4>์ต๊ทผ์ฃผ๋ฌธ</h4>
						<p>์ต๊ทผ 1๊ฐ์ ๋ด ์ฃผ๋ฌธํ์  ๋ด์ญ์๋๋ค.</p>
					</div>
					<div class="table-wrap">
						<table class="tbl_ltype">
							<caption>์ํํ ๋ฆฌ์คํธ</caption>
							<colgroup>
								<col style="width: 50px">
								<col style="width: 180px">
								<col style="width: 30px">
								<col style="width: 80px">
								<col style="width: 80px">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">์ฃผ๋ฌธ๋ฒํธ</th>
									<th scope="col">์ํ์ ๋ณด</th>
									<th scope="col" style="padding: 15px 0">์๋</th>
									<th scope="col">ํ๋งค๊ฐ</th>
									<th scope="col">๋ฆฌ๋ทฐ์์ฑ</th>
								</tr>
							</thead>
							<tbody>
							
								<c:forEach items="${recentOrderList}" var="orderVO">
								<form action="gly?command=rate_form" method="post">
									<tr>
										<td>${orderVO.o_id}</td>
										<td>${orderVO.p_name}</td>
										<td>${orderVO.o_quantity}</td>
										<td><span>โฉ<fmt:formatNumber value="${orderVO.p_price}" pattern="#,###"/></span>
										</td>
										<input type="hidden" value="${orderVO.p_id}" name="p_id">
										<td><input value="์ํํ์์ฑ" type="submit" class="addBtn"/></td>
									</tr>
									</form>
								</c:forEach>
								
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

<!-- Hansol -->