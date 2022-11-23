<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link href="../css/layout.css" rel="stylesheet" type="text/css" />
    <link href="../css/productDetail.css" rel="stylesheet" type="text/css" />
    <link href="../css/shoppingbag.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <%@ include file="../layout/header.jsp"%>
    <div class="sub_container">
      <div class="app-container">
        <h4 class="page-title">주문 상세정보</h4>
        <div class="order_box">
          <dl>
            <dt>주문일자</dt>
            <dd>2022.06.27</dd>
            <span> | </span>
            <dt>주문번호</dt>
            <dd>2022060279545</dd>
          </dl>
        </div>
        <div class="table-wrap">
          <table class="tbl_ltype">
            <caption style="display: none">
              주문 상세정보
            </caption>
            <colgroup>
              <col style="width: 150px" />
              <col />
              <col style="width: 150px" />
            </colgroup>
            <thead>
              <tr>
                <th scope="col">상품주문번호</th>
                <th scope="col">상품정보</th>
                <th scope="col">상품금액(수량)</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  <div class="price_wrap">
                    <span>13551689546 </span>
                  </div>
                </td>
                <td class="pt_list_wrap">
                  <div class="pt_list_all">
                    <a
                      href="/ko/HANDSOME/WOMEN/OUTER/JUMPER/%EB%9E%A8%EC%8A%A4-%EC%9A%B8-%EB%B8%94%EB%A0%8C%EB%93%9C-%ED%9B%84%EB%93%9C-%EC%A0%90%ED%8D%BC/p/O22CAWOT283W_LA_82"
                      onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','램스 울 블렌드 후드 점퍼');"
                    >
                      <img src="http://newmedia.thehandsome.com/O2/2C/FW/O22CAWOT283W_LA_S01.jpg" alt="" />
                    </a>
                    <div class="tlt_wrap">
                      <a
                        href="/ko/HANDSOME/WOMEN/OUTER/JUMPER/%EB%9E%A8%EC%8A%A4-%EC%9A%B8-%EB%B8%94%EB%A0%8C%EB%93%9C-%ED%9B%84%EB%93%9C-%EC%A0%90%ED%8D%BC/p/O22CAWOT283W_LA_82"
                        class="basket_tlt"
                        onclick="javascript:setEcommerceData('0', 'Click ADD');GA_Event('쇼핑백','상품','램스 울 블렌드 후드 점퍼');"
                      >
                        <span class="tlt">O'2nd</span> <span class="sb_tlt"> 램스 울 블렌드 후드 점퍼</span>
                      </a>

                      <p class="color_op">color : LAVENDER<span class="and_line">/</span> size : 82</p>
                    </div>
                  </div>
                </td>
                <td class="al_middle">
                  <div class="price_wrap"><span>53,200원</span> <span>(1개)</span></div>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="table-wrap">
          <table class="tbl_ltype">
            <caption style="display: none">
              총액
            </caption>
            <colgroup>
              <col style="width: 50%" />
            </colgroup>
            <tr>
              <td>총액</td>
              <td>318,300원</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <%@ include file="../layout/footer.jsp"%>
  </body>
</html>
