<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/common.css" rel="stylesheet" />
<link href="../css/headerNav.css" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <header>
      <nav>
        <h1 class="logo"><img src="http://cdn.thehandsome.com/_ui/desktop/common/images/main/top-header-handsome-logo.png" /></h1>
        <div>
          <ul class="nav-wrap">
            <li class="nav-category"><a href="#">여성</a></li>
            <li class="nav-category"><a href="#">남성</a></li>
            <li class="nav-category"><a href="#">잡화</a></li>
          </ul>
        </div>
        <ul class="nav-wrap" style="margin-left: auto">
          <li class="nav-mymenu nav-search">
            <input type="text" />
            <a href="#"><img src="../assets/img/search.png" class="navicon" alt="검색" /></a>
          </li>
          <li class="nav-mymenu">
            <a href="#"><img src="../assets/img/heart.png" class="navicon" alt="찜" /></a>
          </li>
          <li class="nav-mymenu">
            <a href="#"><img src="../assets/img/shopping-bag.png" class="navicon" alt="장바구니" /></a>
          </li>
        </ul>
      </nav>
    </header>
</body>
</html>
