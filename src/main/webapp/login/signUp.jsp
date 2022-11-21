<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/common.css" rel="stylesheet" />
<link href="../css/layout.css" rel="stylesheet" />
<link href="../css/signUp.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container">
		<h1 class="page-title">회원가입</h1>
		<form class="signUp-form" action="">
			<fieldset>
				<div class="title_wrap">
					<legend>회원정보</legend>
					<p class="reqd_txt float_right">
						<strong>*</strong> 표시는 필수항목입니다.
					</p>
				</div>
				<table class="tbl_wtype1">
					<!-- <caption>회원가입 입력항목</caption> -->
					<tbody>
						<tr>
							<th scope="row">이메일 아이디</th>
							<td>id@email.com</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="pw">비밀번호</label></th>
							<td>
								<input type="password" id="pw" name="passwd" style="width: 150px" title="비밀번호" />
								<span class="guide_comment lh_30" id="pwMsg"></span> <span class="guide_comment lh_30" id="pwcapsLockMsg"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong> <label for="pw2">비밀번호 확인</label></th>
							<td>
								<input type="password" id="pwc" style="width: 150px" title="비밀번호 확인" />
								<span class="guide_comment" id="pwcMsg"></span> <span class="guide_comment" id="pwcCapsLockMsg"></span>
							</td>
						</tr>
						<tr>
							<th scope="row"><label for="email">E-mail (정보수신용)</label></th>
							<td>
								<input type="text" style="width: 120px" title="이메일" id="email">
								<span class="andmail">@</span>
								<select id="emailDomainSel" style="width: 120px" title="이메일">
									<option value="">직접입력</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="gmail.com">gmail.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="nate.com">nate.com</option>
									<option value="empas.com">empas.com</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="msn.com">msn.com</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="chol.net">chol.net</option>
									<option value="korea.com">korea.com</option>
									<option value="netsgo.com">netsgo.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="hanafos.com">hanafos.com</option>
									<option value="freechal.com">freechal.com</option>
									<option value="hitel.net">hitel.net</option>
								</select>
								<input type="text" id="emailDomain" style="width: 120px" value="" title="이메일 도메인">
								<input type="button" class="btn add_s" id="emailDubChkBtn" value="중복확인">
								<span class="guide_comment" id="emailMsg"></span>
								<!-- <div class="wtype_comment pt10">
                  <input type="checkbox" id="ck1" /><label for="ck1">이메일 아이디 적용</label>
                </div> -->
								<!-- <div class="wtype_comment pt5">
                  <input type="checkbox" id="emailReceiveYn" name="emailReceiveYn" value="Y" /><label
                    for="emailReceiveYn">이메일을 통한 상품 및 이벤트 정보 수신에 동의합니다. (선택)</label>
                  <a href="javascript:void(0);" class="email-prev-detail-btn">자세히 보기</a>
                </div> -->
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="name">이름</label></th>
							<td>
								<input type="text" style="width: 120px" id="name" name="name" />
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="birth">생년월일</label></th>
							<td>
								<select style="width: 80px" id="selYear" title="년도">
									<option value="">년</option>
								</select>
								<select style="width: 80px" id="selMonth" title="월">
									<option value="">월</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
								<select style="width: 80px" id="selDay" title="일">
									<option value="">일</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btnwrap">
					<input type="button" value="취소" class="btn wt" id="cancleBtn" />
					<input type="button" value="회원가입" class="btn gray mr0" id="joinBtn" />
				</div>
			</fieldset>
		</form>
	</div>
	</div>
</body>
</html>