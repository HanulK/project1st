<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/checkPassword.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="sub-container">
		<div class="title-wrap">
			<h4>비밀번호 재확인</h4>
			<p class="txt_line">고객님의 정보보호를 위하여 비밀번호를 다시 한번 확인합니다.</p>
		</div>
		<div class="pw_reaffirm">
        <form>
            <fieldset>
                <legend>입력항목</legend>
                <div class="login_section">
                    
                    <div>
                        <div>
                            <label for="j_username">아이디</label>
                            <input type="text" id="j_username" name="j_username" value="gks*****************" disabled="disabled">
                        </div>
                        <div>
                            <label for="j_password">비밀번호</label>
                            <input type="password" id="j_password" name="j_password" title="비밀번호">
                        </div>
                    </div>
                    <p class="guide_comment ml50">
                    <!-- 입력하신 아이디 혹은 비밀번호가 일치하지 않습니다. --></p>
                </div>
            </fieldset>
        </form>
    	</div>
	    <div class="btnwrap">
			<a href="#" class="btn wt">취소</a>
			<a href="#" class="btn gray">확인</a>
		</div>
</div>

</body>
</html>
