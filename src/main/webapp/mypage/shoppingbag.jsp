<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/layout/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<%-- writer:juhye --%>
<html>
<head>
<link href="css/shoppingbag.css" rel="stylesheet" />
<link href="css/layout.css" rel="stylesheet" />
<link href="css/common2.css" rel="stylesheet" />
<link href="css/mypage.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="bodywrap">
      <div class="sub_container">
         <div class="cnt_title">
            <h3 id="pageName">쇼핑백</h3>
         </div>
         <div class="container">
            <%@ include file="menu.jsp"%>
            <div class="sub-container">
               <div class="mypage-container">
                  <div class="orderwrap1807">
                     <div class="tbl_info_wrap">
                        <p class="cart_top_text"></p>
                        <div class="fourpm_pd_ck">
                           <div class="input_wrap"></div>
                        </div>
                     </div>
                     <!--shoppingback table-->
                     <div class="tblwrap">
                        <table class="tbl_ltype">
                           <caption>쇼핑백</caption>
                           <colgroup>
                              <col style="width: 270px" />
                              <col style="width: 50px" />
                              <col style="width: 140px" />
                              <col style="width: 110px" />
                           </colgroup>
                           <thead>
                              <tr>
                                 <th scope="col">상품정보</th>
                                 <th scope="col">수량</th>
                                 <th scope="col">판매가</th>
                                 <th scope="col">선택</th>
                              </tr>
                           </thead>
                           <tbody>
                           <form action="${contextPath}/gly?command=cart_delete" method="post">
                              <c:forEach items="${cartList}" var="cartVO">
                                 
                                 <tr name="entryProductInfo" data-pk="11004809805868"
                                    data-deliverykind="" data-outofstock="false"
                                    data-category="WE052">

                                    <td class="pt_list_wrap">
                                       <!-- pt_list_all -->
                                       <div class="pt_list_all">
                                             <a href="gly?command=product_detail&pid=${cartVO.p_id}"><img src="${cartVO.img_src}"/> </a>
                                             <input type="hidden" name = "p_id" value = "${cartVO.p_id}"/>
                                             <input type="hidden" name = "p_d_id" value = "${cartVO.p_d_id}"/>
                                          <div class="tlt_wrap">
                                             <span class="sb_tlt"> ${cartVO.p_name}</span>
                                             <p class="color_op">
                                                color : <span id="color">${cartVO.p_color}</span>
                                                <input type="hidden" value="${cartVO.p_color}"
                                             name="color" />
                                                <span class="and_line">/</span> size :
                                                <span id="size"> ${cartVO.p_size}</span>
                                                <input type="hidden" value="${cartVO.p_size}"
                                             name="size" />
                                             </p>
                                          </div>
                                       </div> <!-- //pt_list_all-->
                                    </td>
                                    <td class="al_middle">
<!--                                     	<input type="hidden"
                                       name="entryNumber" value="0" /> <input type="hidden"
                                       name="productCode" value="O22CAWOT283W_LA_82" /> <input
                                       type="hidden" name="initialQuantity" value="1" /> <input
                                       type="hidden" name="chgProductCode" value="" /> <input
                                       type="hidden" name="curSize" value="82" /> <input
                                       type="hidden" name="storeId" value="" /> <input
                                       type="hidden" name="storePickupDate" value="" /> <input
                                       type="hidden" name="deliveryKind" value="" /> <input
                                       type="hidden" name="cartDivision" value="" /> qty_sel -->

                                       <div>
                                          <input readonly type="number" min="1" value="${cartVO.c_quantity}" 
                                             name="quantity" class="cart-qty"/>
                                       </div></td>
                                    <td class="al_middle">
                                       <!-- Price -->
                                       <div class="price_wrap">
                                          <span>
                                                    ₩ 
                                                   <fmt:formatNumber value="${cartVO.p_price}" pattern="#,###"/>
                                                   </span>
                                       
                                    </td>

                                    <td class="al_middle">
                                       <!-- Button size -->
                                       <div class="btn_wrap">
                                             <input type="submit" style="border-radius: 3px; font-size: 5px;"
                                             class="btn wt_ss" onclick="javascript: form.action='gly?command=cart_delete&p_d_id=${cartVO.p_d_id}';" value="삭제" />
                                       </div> <!-- //Button size -->
                                    </td>
                                 </tr>
                              
                              </c:forEach>
                              
                           </tbody>
                        </table>
                     </div>
                     <!--shoppingback table-->
                     <!--Total wrap-->
                     <div class="total_wrap">
                        <!-- total -->
                        <div class="total_price_wrap">
                         <div class="real_price_wrap">
                           <dl>
                              <dt style="margin-bottom: 5px;">상품 합계</dt>
                              <dd>
                               <span id="cartDataSubtotal">
                                          ₩ 
                                          <fmt:formatNumber value="${totalPrice}" pattern="#,###"/>
                                      </span>
                              </dd>
                              <dt class="delch_wrap">
                                 <p class="tlt_ship">배송비</p>
                              </dt>
                              <dd>
                                 <span id="cartDataDeliveryCost">무료배송</span>
                              </dd>
                           </dl>
                           <dl class="total">
                              <dt style="margin-bottom: 15px;">합계</dt>
                              <dd>
                               <span id="cartDataTotalPrice">
                                       ₩ 
                                       <fmt:formatNumber value="${totalPrice}" pattern="#,###"/>
                                    </span>
                              </dd>
                           </dl>
                           
                           <div class="btn gray_ss" style="width:100%"  >
                            <dl>
                           	<input style="background: #4a4a4a; border: none; text-align: center; color: white;" type="submit" onclick="javascript: form.action='gly?command=order_detail&num=${cartList.size()}';" value="전체주문" /> 
                           </dl>
                           </div>
                           
                         </div>
                        </div>
                        
                        <div class="total_count1807">
                           <p>
                              총 <span id="selectProductCount">${cartList.size()}</span> 개 상품
                           </p>
                        </div>
                        <!-- //total -->
                     </div>
                  </div>
               </div>
               <!--//sub_container-->
            </div>
         </div>
      </div>
   </div>
   <%@ include file="/layout/footer.jsp"%>
</body>

</html>