<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <link href="../css/headerNav.css" rel="stylesheet" />
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <header class="header-wrap">
      <nav class="nav-container">
        <h1 class="logo">
          <a href="../main/main.jsp">
            :)GLY
          </a>
        </h1>
        <div>
          <ul class="nav-wrap">
            <li class="nav-category"><a href="../product/itemWList.jsp" class="nav-link">여성</a></li>
            <li class="nav-category"><a href="../product/itemWList.jsp" class="nav-link">남성</a></li>
            <li class="nav-category"><a href="../product/itemWList.jsp" class="nav-link">잡화</a></li>
          </ul>
        </div>
        <ul class="nav-wrap" style="margin-left: auto">
          <li class="nav-mymenu nav-search">
            <input type="text" />
            <a href="../product/searchlist.jsp">
              <img src="../assets/img/search.png" class="navicon" alt="검색" />
            </a>
          </li>
          <li class="nav-mymenu"><a href="../login/login.jsp"> 로그인</a></li>
          <li class="nav-mymenu"><a href="../mypage/mypage_menu.jsp"> 마이페이지</a></li>
          <li class="nav-mymenu"><a href="../mypage/shoppingbag.jsp">쇼핑백 </a></li>
        </ul>
      </nav>
    </header>
  </body>
</html>
