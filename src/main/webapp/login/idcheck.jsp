<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript">
	function idok() {
		opener.signupForm.id.value = "${id}";
		opener.signupForm.reid.value = "${id}";
		self.close();
	}
</script>
</head>
<body>
	<div id="wrap">
		<h1>ID 중복확인</h1>
		<form method=post name=reidFrom action="gly?command=id_check_form">
			User ID
			<input type=text name="id" value="">
			<input type="submit" value="검색" name="searchBtn" class="submit">
			<br>
			<div style="margin-top: 20px">
				<c:if test="${message == 1}">
					<script type="text/javascript">
						document.reidFrom.id.value = "";
					</script>
				 	${id}는 이미 사용중인 아이디입니다.
				</c:if>
				<c:if test="${message==0}">
				 ${id}는 사용 가능한 ID입니다.
				 <input type="button" value="사용" class="cancel" onclick="idok()">
				</c:if>
				<c:if test="${message == -1}">
					<script type="text/javascript">
						document.reidFrom.id.value = "";
					</script>
				 오류. 관리자에게 문의 바랍니다.
				 </c:if>
			</div>
		</form>
	</div>
	<script type="text/javascript" src="js/signup/reid.js"></script>
</body>
</html>

<!-- Seyoung -->