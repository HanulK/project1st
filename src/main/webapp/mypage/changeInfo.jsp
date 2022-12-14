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
<title>πππ¬</title>
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="bodywrap">
		<div class="sub_container">
			<div class="cnt_title">
				<h3 id="pageName">κ°μΈμ λ³΄ λ³κ²½/νν΄</h3>
			</div>
			<div class="container">
				<%@ include file="menu.jsp"%>
				<div class="sub-container">
					<div class="title_wrap">
						<h4 class="float_left">κ°μΈμ λ³΄ λ³κ²½</h4>
						<p class="txt_line">νμμ λ³΄λ₯Ό νμΈνκ³ , λ³κ²½ν  μ μμ΅λλ€.</p>
						<p class="reqd_txt">
							<strong class="reqd">*</strong> νμλ νμν­λͺ©μλλ€.
						</p>
					</div>
					<form method="post" action="gly?command=change_infoForm">
						<fieldset>
							<legend>νμμ λ³΄μλ ₯</legend>
							<div class="tblwrap">

								<table class="tbl_wtype1">
									<caption>νμκ°μ μλ ₯ν­λͺ©</caption>
									<colgroup>
										<col style="width: 140px">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th scope="row" class="th_space">μμ΄λ</th>
											<td>${sessionScope.userInfo.m_id}</td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><label for="pwChangeBtn">λΉλ°λ²νΈ</label></th>
											<td>
												<input type="password" class="btn add_s" name="pwd" required>
											</td>
										</tr>
										<tr>
											<th scope="row"><strong class="reqd">*</strong> <label for="inforcvemail">E-mail(μ λ³΄μμ μ©)</label></th>
											<td>
												<input type="text" style="width: 120px" name="email" required />
												<span class="andmail">@</span>
												<input type="text" id="emailDomain" style="width: 120px" name="email_domain" required>
												<span class="guide_comment" id="emailMsg"></span>
												<div class="wtype_comment pt10">
													<span>μ νν μ΄λ©μΌ μ λ³΄λ₯Ό μλ ₯νμμΌ μ£Όλ¬Έ/λ°°μ‘ λ° μλΉμ€μ λ³΄λ₯Ό λ°μ λ³΄μ€ μ μμ΅λλ€.</span>
												</div>
											</td>
										</tr>
										<tr>
											<th scope="row" class="th_space"><strong class="reqd">*</strong> μ΄λ¦</th>
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
											<th scope="row" class="th_space"><strong class="reqd">*</strong> μλμμΌ</th>
											<td>
											<input type="hidden" value="${sessionScope.userInfo.m_birth}">
												<select style="width: 120px" id="selYear" title="λλ" name="year" disabled>
												 	<option value="" selected disabled hidden><%=year%></option>
												</select>
												<select style="width: 120px" id="selMonth" title="μ" name="month" disabled>
													<option value="" selected disabled hidden><%=month%></option>
												</select>
												<select style="width: 120px" id="selDay" title="μΌ" name="day" disabled>
													<option value="" selected disabled hidden><%=day%></option>
												</select>
											</td>
										</tr>
									</tbody>
								</table>

							</div>
						</fieldset>
						<div class="btn_btwrap">
							<input type="button" class="btn wt_ss" value="νμνν΄" id="memberSecessionBtn">
						</div>
						<div class="btnwrap mypage2">

							<a href="gly?command=mypage"><input type="button" class="btn wt" value="μ·¨μ"
								id="cancleBtn"></a> <input type="submit" class="btn gray" style="color:#fff;" value="λ³κ²½μ¬ν­ μ μ₯" id="saveBtn">
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