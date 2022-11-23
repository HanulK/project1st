<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/qna.css" rel="stylesheet" />
<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">상품Q&A</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
        <div class="title_wrap">
            <h4>상품 Q&A</h4>
            <span>│</span>
            <p class="txt_line">고객님이 상품상세 Q&A에서 작성한 글입니다.</p>
        </div>
        <div class="tblwrap">
            <table class="tbl_ltype">
                <caption>나의 1:1 문의 목록</caption>
                <colgroup>
                    <col style="width:180px" />
                    <col />
                    <col style="width:150px" />
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">상품명</th>
                        <th scope="col">내용</th>
                        <th scope="col">작성일</th>
                    </tr>
                </thead>
                <tbody id="listBody">
                    <td>
                        상품명상품명상품명상품명상품명상품명
                    </td>
                    <td>
                        내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용
                    </td>
                    <td>
                        작성일작성일작성일작성일
                    </td>
                </tbody>
            </table>
            <div class="paging mt30" id="qnAPagingDiv"></div>
        </div>
        <!-- //Table -->
        <!--paging-->
        <div class="paging"></div>
        <!--//paging-->


    </div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
