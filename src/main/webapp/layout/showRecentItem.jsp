<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		LatelyItemRender();
	});
</script>
<style>
#newItemsListContent {
	margin: 0 auto;
	width: fit-content;
	border-top: 1px solid #dfdfdf;
}

#newItemsListContent>.title {
	padding: 15px 30px 3px 15px;
	/* margin: 70px 7px 10px 15px; */
	font-size: 13px;
}

.productList {
	display: flex;
	align-items: flex-start;
	padding: 0px;
	margin: 0 16px;
	gap: 10px;
	text-align: center;
	padding: 0px;
	width: fit-content;
	overflow: hidden;
	color: #555;
	font-size: 12px;
}

.productList li img {
	max-height: 250px;
	object-fit: cover;
}

.productLIist .price {
	padding: 5px 0;
	color: #0d0d0d;
}
</style>
</head>
<body>
	<section id="newItemsListContent">
		<h1 class="title">최근 본 상품</h1>
		<div class="hidden_wrap">
			<ul class=" productList">
			</ul>
		</div>
	</section>
	<!-- 최근본 상품 start -->
</body>
</html>