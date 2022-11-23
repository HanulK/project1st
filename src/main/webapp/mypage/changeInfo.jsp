<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="../css/changeInfo.css" rel="stylesheet" type="text/css">
<link href="../css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
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
										<td>gks*****************</td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><label for="pwChangeBtn">비밀번호</label></th>
										<td>
											<input type="button" value="비밀번호 변경" class="btn add_s" id="pwChangeBtn">
										</td>
									</tr>
									<tr>
										<th scope="row"><strong class="reqd">*</strong> <label for="inforcvemail">E-mail(정보수신용)</label></th>
										<td>
											<input type="text" style="width: 120px" title="이메일아이디" id="email" value="">
											<span class="andmail">@</span>
											<select id="emailDomainSel" style="width: 120px" title="이메일계정">
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
											<!-- <input type="button" class="btn add_s" id="emailDubChkBtn" value="중복확인"> -->
											<span class="guide_comment" id="emailMsg"></span>
											<div class="wtype_comment pt10">
												<span>정확한 이메일 정보를 입력하셔야 주문/배송 및 서비스정보를 받아 보실 수 있습니다.</span>
											</div>
										</td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><strong class="reqd">*</strong> 이름</th>
										<td>
											<input type="text" style="width: 120px" id="name" name="name" value="이*솔">
										</td>
									</tr>
									<tr>
										<th scope="row" class="th_space"><strong class="reqd">*</strong> 생년월일</th>
										<td>
											<select style="width: 120px" id="selYear" title="년도">
												<option value="2008" selected>2008</option>
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
												<option value="1984">1984</option>
												<option value="1983">1983</option>
												<option value="1982">1982</option>
												<option value="1981">1981</option>
												<option value="1980">1980</option>
												<option value="1979">1979</option>
												<option value="1978">1978</option>
												<option value="1977">1977</option>
												<option value="1976">1976</option>
												<option value="1975">1975</option>
												<option value="1974">1974</option>
												<option value="1973">1973</option>
												<option value="1972">1972</option>
												<option value="1971">1971</option>
												<option value="1970">1970</option>
												<option value="1969">1969</option>
												<option value="1968">1968</option>
												<option value="1967">1967</option>
												<option value="1966">1966</option>
												<option value="1965">1965</option>
												<option value="1964">1964</option>
												<option value="1963">1963</option>
												<option value="1962">1962</option>
												<option value="1961">1961</option>
												<option value="1960">1960</option>
												<option value="1959">1959</option>
												<option value="1958">1958</option>
												<option value="1957">1957</option>
												<option value="1956">1956</option>
												<option value="1955">1955</option>
												<option value="1954">1954</option>
												<option value="1953">1953</option>
												<option value="1952">1952</option>
												<option value="1951">1951</option>
												<option value="1950">1950</option>
												<option value="1949">1949</option>
												<option value="1948">1948</option>
												<option value="1947">1947</option>
												<option value="1946">1946</option>
												<option value="1945">1945</option>
												<option value="1944">1944</option>
												<option value="1943">1943</option>
												<option value="1942">1942</option>
												<option value="1941">1941</option>
												<option value="1940">1940</option>
											</select>
											<select style="width: 120px" id="selMonth" title="월">
												<option value="01" selected>01</option>
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
											<select style="width: 120px" id="selDay" title="일">
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
									<!-- <tr>
										<th scope="row" class="th_space">이메일 / SMS <br> 수신여부
										</th>
										<td>
											<div class="wtype_comment">
												더한섬닷컴에서 제공되는 서비스에 대한 수신동의 여부를 확인해주세요.
												<br>
												선택 하시면 더한섬닷컴에서 진행하는 공지 및 이벤트소식을 받아보실 수 있습니다.
												<br>
												<span>(단, 가입 및 주문/결제와 재입고 알림 등에 관련된 이메일과 SMS는 동의와 상관 없이 발송 됩니다.)</span>
											</div>
											<div class="receive_choice">
												<span class="bul_sty01"> <span>이메일</span> <input type="radio" name="emailReceiveYN" value="true" id="emailReceiveYN"><label for="email_y">예</label> <input type="radio" name="emailReceiveYN" value="false" id="emailReceiveYN" checked="checked"><label for="email_n">아니오</label>
												</span> <span class="bul_sty01"> <span>SMS</span> <input type="radio" name="smsReceiveYN" id="smsReceiveYN" value="true" disabled="disabled"><label for="sms_y2">예</label> <input type="radio" name="smsReceiveYN" id="smsReceiveYN" value="false" disabled="disabled" checked="checked"><label for="sms_n2">아니오</label>
												</span>
											</div>
										</td>
									</tr> -->
								</tbody>
							</table>
						</div>
					</fieldset>
					<div class="btn_btwrap">
						<input type="button" class="btn wt_ss" value="회원탈퇴" id="memberSecessionBtn">
					</div>
					<div class="btnwrap mypage2">
						<input type="button" class="btn wt" value="취소" id="cancleBtn">
						<input type="button" class="btn gray" value="변경사항 저장" id="saveBtn">
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../layout/footer.jsp"%>
</body>
</html>
