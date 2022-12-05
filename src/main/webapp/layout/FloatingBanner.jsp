<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
#floatMenu {
	position: absolute;
    width: 100px;
    height: 660px;
    top: 10px;
    border: 1.5px solid #dedcdc;
    border-radius:10px;
    color: #fff;
    right: 120px;
}
#newItemsListContent {
	margin: 0 auto;
	width: fit-content;
	border-top: 1px solid #dfdfdf;
}
#newItemsListContent>.title {
	font-size: 13px;
	color:#444;
}
.productList {
	padding: 0px;
	gap: 10px;
	text-align: center;
	padding: 0px;
	width: fit-content;
	overflow: hidden;
	color: #555;
	font-size: 12px;
}
.productList li img {
	max-height:100px;
	object-fit: cover;
}
.productLIist .price {
	padding: 5px 0;
	color: #0d0d0d;
}
.item_info2 p{
	display:none;
}
</style>
</head>
<body>
<script>
$(document).ready(function() {
	
	var floatPosition = parseInt($("#floatMenu").css('top'));

	$(window).scroll(function() {
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + 100 + "px";

		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();
	LatelyItemRender();
});
</script>
<div id="floatMenu">
	<section id="newItemsListContent">
		<h1 class="title">최근 본 상품</h1>
		<div class="hidden_wrap" style="margin: 0 auto;">
			<ul class=" productList">
			</ul>
		</div>
	</section>
</div>
</body>


</html>

<!-- Hansol -->
