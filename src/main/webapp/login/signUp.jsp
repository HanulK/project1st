<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Gly : 회원가입</title>
<link href="css/common.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/signUp.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div class="app-container" style="height: 800px">
		<h1 class="page-title">회원가입</h1>
		<form class="signUp-form" method="post" action="gly?command=join" name="signupForm">
			<fieldset>
				<div class="title_wrap">
					<legend>회원정보</legend>
					<p class="reqd_txt float_right">
						<strong>*</strong> 표시는 필수항목입니다.
					</p>
				</div>
				<table class="tbl_wtype1" style="table-layout: fixed">
					<!-- <caption>회원가입 입력항목</caption> -->
					<colgroup>
						<col style="width: 180px">
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="id">아이디</label></th>
							<td>
								<input type="text" style="width: 150px" id="id" name="id" />
								<input type="hidden" name="reid">
								<input type="button" class="btn add_s" value="중복확인" />
								<span class="check-msg" id="double-check">중복확인여부</span>
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="pw">비밀번호</label></th>
							<td>
								<input type="password" id="pw" name="pw" style="width: 150px" title="비밀번호" />
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong> <label for="pwc">비밀번호 확인</label></th>
							<td>
								<input type="password" id="pwc" style="width: 150px" title="비밀번호 확인" />
								<span class="check-msg" id="correct-check">일치확인여부</span>
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
								<select style="width: 80px" id="selYear" name="selYear" title="년도">
									<!--    <option value="" selected disabled>년</option> -->
									<option value="none">년도</option>
									<option value="2020">2020</option>
									<option value="2019">2019</option>
									<option value="2018">2018</option>
									<option value="2017">2017</option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
								</select>
								<select style="width: 80px" id="selMonth" name="selMonth" title="월">
									<!--    <option value="" selected disabled>월</option> -->
									<option value="none">월</option>
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
								<select style="width: 80px" id="selDay" name="selDay" title="일">
									<!-- <option value="" selected disabled>일</option> -->
									<option value="none">일</option>
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
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="gender">성별</label></th>
							<td>
								<label><input type="radio" name="gender" value="2" checked />여성</label> <label><input type="radio" name="gender" value="1" />남성</label>
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="address">주소</label></th>
							<td>
								<input type="text" style="width: 100%" id="address" name="address" />
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="email">E-mail</label></th>
							<td>
								<input type="text" style="width: 180px" name="email" title="이메일" id="email" placeholder="ex) test@gmail.com" />
								<!-- <span class="andmail">@</span>
                  <input type="text" style="width: 120px" title="이메일 도메인" id="emailDomain" /> -->
							</td>
						</tr>
						<tr>
							<th scope="row"><strong class="reqd">*</strong><label for="phone">전화번호</label></th>
							<td>
								<input type="text" style="width: 50px" name="phone1" />
								-
								<input type="text" style="width: 50px" name="phone2" />
								-
								<input type="text" style="width: 50px" name="phone3" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="btnwrap">
					<input type="button" value="회원가입" class="btn gray mr0" id="joinBtn" />
					<input type="reset" value="취소" class="btn wt" id="cancleBtn" />
				</div>
			</fieldset>
		</form>
	</div>
	<%@ include file="../layout/footer.jsp"%>
	<script type="text/javascript" src="js/signup/member.js"></script>
	<script type="text/javascript" src="js/signup/idcheck.js"></script>
</body>
</html>

<!-- Seyoung, Juhye -->
