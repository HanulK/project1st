<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/changeInfo.css" rel="stylesheet" type="text/css">
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">개인정보 변경/탈퇴</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="title_wrap">
						<h4 class="float_left">개인정보 변경</h4>
						<p class="txt_line">회원정보를 확인하고, 변경할 수 있습니다.</p>
						<p class="reqd_txt">
							<strong class="reqd">*</strong> 표시는 필수항목입니다.
						</p>
					</div>
					<form method="post" action="gly?command=change_infoForm">
						<fieldset>
							<legend>회원정보입력</legend>
							<div class="tblwrap">

								<table class="tbl_wtype1">
									<caption>회원가입 입력항목</caption>
									<colgroup>
										<col style="width: 140px">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="th_space">아이디</th>
											<td>${sessionScope.userInfo.m_id}</td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><label for="pwChangeBtn">비밀번호</label></th>
											<td>
												<input type="password" class="btn add_s" name="pwd" required>
											</td>
										</tr>
										<tr>
											<th scope="row"><strong class="reqd">*</strong> <label for="inforcvemail">E-mail(정보수신용)</label></th>
											<td>
												<input type="text" style="width: 120px" name="email" required />
												<span class="andmail">@</span>
												<input type="text" id="emailDomain" style="width: 120px" name="email_domain" required>
												<span class="guide_comment" id="emailMsg"></span>
												<div class="wtype_comment pt10">
													<span>정확한 이메일 정보를 입력하셔야 주문/배송 및 서비스정보를 받아 보실 수 있습니다.</span>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><strong class="reqd">*</strong> 이름</th>
											<td>
												<input type="text" style="width: 120px" id="name" name="name" value="${sessionScope.userInfo.m_name}" disabled>
											</td>
										</tr>
										<%
										String birth =(String)request.getAttribute("birth");
										System.out.println(birth);
										String year = birth.substring(0,4);
										String month = birth.substring(4,6);
										String day = birth.substring(6,8);
										System.out.println(year +" "+ month+" "+day);
										%>
										<tr>
											<th scope="row" class="th_space"><strong class="reqd">*</strong> 생년월일</th>
											<td>
											<input type="hidden" value="${sessionScope.userInfo.m_birth}">
												<select style="width: 120px" id="selYear" title="년도" name="year" disabled>
												 	<option value="" selected disabled hidden><%=year%></option>
												</select>
												<select style="width: 120px" id="selMonth" title="월" name="month" disabled>
													<option value="" selected disabled hidden><%=month%></option>
												</select>
												<select style="width: 120px" id="selDay" title="일" name="day" disabled>
													<option value="" selected disabled hidden><%=day%></option>
												</select>
											</td>
										</tr>
									</tbody>
								</table>

							</div>
						</fieldset>
						<div class="btn_btwrap">
							<input type="button" class="btn wt_ss" value="회원탈퇴" id="memberSecessionBtn">
						</div>
						<div class="btnwrap mypage2">

							<a href="gly?command=mypage"><input type="button" class="btn wt" value="취소"
								id="cancleBtn"></a> <input type="submit" class="btn gray" style="color:#fff;" value="변경사항 저장" id="saveBtn">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script type="text/javascript" src="js/mypage/deleteMember.js"></script>
</body>
</html>
<!-- Hansol -->