<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}}" />

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link href="../css/common.css" rel="stylesheet" />
    <link href="../css/layout.css" rel="stylesheet" />
    <link href="../css/signUp.css" rel="stylesheet" />
  </head>
  <body>
    <%@ include file="../layout/header.jsp"%>
    <div class="app-container" style="height: 800px">
      <h1 class="page-title">회원가입</h1>
      <form class="signUp-form" action="">
        <fieldset>
          <div class="title_wrap">
            <legend>회원정보</legend>
            <p class="reqd_txt float_right"><strong>*</strong> 표시는 필수항목입니다.</p>
          </div>
          <table class="tbl_wtype1">
            <!-- <caption>회원가입 입력항목</caption> -->
            <tbody>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="name">아이디</label></th>
                <td>
                  <input type="text" style="width:150px" id="name" name="name" />
                  <input type="button" class="btn add_s" value="중복확인" />
                  <span class="repeat-check">중복확인여부</span>
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="pw">비밀번호</label></th>
                <td>
                  <input type="password" id="pw" name="passwd" style="width:150px" title="비밀번호" />
                  <span class="guide_comment lh_30" id="pwMsg"></span> <span class="guide_comment lh_30" id="pwcapsLockMsg"></span>
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong> <label for="pw2">비밀번호 확인</label></th>
                <td>
                  <input type="password" id="pwc" style="width:150px" title="비밀번호 확인" />
                  <span class="guide_comment" id="pwcMsg"></span> <span class="guide_comment" id="pwcCapsLockMsg"></span>
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="name">이름</label></th>
                <td>
                  <input type="text" style="width:120px" id="name" name="name" />
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="birth">생년월일</label></th>
                <td>
                  <select style="width:80px" id="selYear" title="년도">
                    <option value="" selected disabled>년</option>
                    <option value="2020">2020</option>
                    <option value="2019">2010</option>
                    <option value="2018">2010</option>
                    <option value="2017">2010</option>
                    <option value="2016">2010</option>
                    <option value="2015">2010</option>
                    <option value="2014">2010</option>
                    <option value="2013">2010</option>
                    <option value="2012">2010</option>
                    <option value="2011">2010</option>
                    <option value="2010">2010</option>
                    <option value="2010">2010</option>
                  </select>
                  <select style="width:80px" id="selMonth" title="월">
                    <option value="" selected disabled>월</option>
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
                  <select style="width:80px" id="selDay" title="일">
                    <option value="" selected disabled>일</option>
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
                <th scope="row"><strong class="reqd">*</strong><label for="name">성별</label></th>
                <td>
                  <input type="text" style="width:120px" id="name" name="name" />
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="name">주소</label></th>
                <td>
                  <input type="text" style="width:100%" id="name" name="name" />
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="email">E-mail</label></th>
                <td>
                  <input type="text" style="width:120px" title="이메일" id="email" />
                  <span class="andmail">@</span>
                  <input type="text" id="emailDomain" style="width:120px" value="" title="이메일 도메인" />
                  <span class="guide_comment" id="emailMsg"></span>
                </td>
              </tr>
              <tr>
                <th scope="row"><strong class="reqd">*</strong><label for="name">전화번호</label></th>
                <td>
                  <input type="text" style="width:50px" id="name" name="name" />-
                  <input type="text" style="width:50px" id="name" name="name" />-
                  <input type="text" style="width:50px" id="name" name="name" />
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
    <%@ include file="../layout/footer.jsp"%>
  </body>
</html>
