<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<h3 id="pageName">QNA 작성</h3>
			</div>
			<%@ include file="menu.jsp"%>
			<form>
				<fieldset>
					<legend style="display: none;">상품문의하기</legend>
					<div class="tblwrap">
						<p class="reqd_txt float_right">
							<strong class="reqd">*</strong> 표시는 필수항목입니다.
						</p>

						<table class="tbl_wtype1">
							<caption>상품문의하기 입력항목</caption>
							<colgroup>
								<col width="220px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryTitle">문의제목</label></th>
									<td>
										<input type="text" id="inquiryTitle" name="inquiryTitle" title="input" style="width: 100%">
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryContents">문의내용</label><span class="com_txt_p">(300자 이하)</span></th>
									<td>
										<textarea name="inquiryContents" id="inquiryContents" cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="guide_txt clearfix" style="border-top: 0;">
						<span class="float_left"><strong>상품에 관한 배송, 교환, 취소 등의 자세한 문의사항은 고객센터를 이용해 주시기 바랍니다.</strong></span>
					</p>
					<div class="btnwrap mt40">
						<input type="button" id="qnaCancle" value="취소하기" class="btn wt">
						<input type="button" id="qnaWriteSend" value="등록하기" class="btn gray mr0">
					</div>
				</fieldset>
			</form>
		</div>
	</div>

</body>
</html>
