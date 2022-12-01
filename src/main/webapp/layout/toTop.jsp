<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toTop</title>
<style>
#toTop {
	position: fixed;
	right: 0;
	bottom: 0;
}
</style>
</head>
<body>
	<div>
		<span id="toTop" a href="#">▲</span>
	</div>
</body>
</html>