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
<link rel="icon" href="assets/img/favicon.ico" />
<title>đđđŦ</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">ėíí ėėą</h3>
			</div>
			<%@ include file="menu.jsp"%>
			<form action ="gly?command=write_review&p_id=${p_id}" method="post">
				<fieldset>
					<legend style="display: none;">ėíí ėėą</legend>
					<div class="tblwrap">
						<p class="reqd_txt float_right">
							<strong class="reqd">*</strong> íėë íėí­ëĒŠėëë¤.
						</p>

						<table class="tbl_wtype1">
							<caption>ėíí ėėą</caption>
							<colgroup>
								<col width="220px">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryTitle">ėíí ė ëĒŠ</label></th>
									<td>
										<input type="text" id="inquiryTitle" name="title" title="input" style="width: 100%" required>
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryTitle">ëŗė </label></th>
									<td>
										<select name="rate_num">
											 <option value="1">â­</option>
											 <option value="2">â­â­</option>
											 <option value="3">â­â­â­</option>
											 <option value="4">â­â­â­â­</option>
											 <option value="5">â­â­â­â­â­</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row"><strong class="reqd">*</strong><label for="inquiryContents">ėíí ë´ėŠ</label><span class="com_txt_p">(300ė ė´í)</span></th>
									<td>
										<textarea name="contents" id="inquiryContents" cols="30" rows="5" style="width: 98%; height: 200px"></textarea>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="btnwrap mt40">
						<input type="button" value="ėˇ¨ėíę¸°" class="btn wt">
						<input type="submit" style="color:white;" value="ëąëĄíę¸°" class="btn gray mr0">
					</div>
				</fieldset>
			</form>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>

</html>

<!-- Hansol -->