<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/qnaForm.css" rel="stylesheet" />
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">상품평 작성</h3>
			</div>
			<%@ include file="menu.jsp"%>
			<form action ="gly?command=write_review" method="post">
				<fieldset>
					<legend style="display: none;">상품평 작성</legend>
					<div class="tblwrap">
						<p class="reqd_txt float_right">
							<strong class="reqd">*</strong> 표시는 필수항목입니다.
						</p>

						<table class="tbl_wtype1">
							<caption>상품평 작성</caption>
							<colgroup>
								<col width="220px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryTitle">상품평 제목</label></th>
									<td>
										<input type="text" id="inquiryTitle" name="title" title="input" style="width: 100%">
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryContents">상품평 내용</label><span class="com_txt_p">(300자 이하)</span></th>
									<td>
										<textarea name="contents" id="inquiryContents" cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnwrap mt40">
						<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
						<input type="submit" id="qnaWriteSend" value="등록하기" class="btn gray mr0">
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>

</html>
