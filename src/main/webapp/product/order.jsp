<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/order.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>:) GLY</title>
</head>
<body>
	<%@ include file="/layout/header.jsp"%>
	<h3 class="cnts_title">
		<span>배송&결제정보 입력</span>
    </h3>
    <div class="orderwrap">
		<form>
			<div class="sub_container">
				<div class="orderwrap">
					<div class="float_left">
						<div class="tblwrap">
							<table>
								<caption>배송&결제정보 입력</caption>
								<colgroup>
	                            	<col>
	                            	<col style="width: 66px">
									<col style="width: 158px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">상품정보</th>
										<th scope="col">수량</th>
										<th scope="col">판매가</th>
									</tr>
								</thead>
								<tbody>
									<tr class="al_middle">
										<td class="frt">
											<div class="pt_list_all">
												<a>
													<img src="${product.p_img_src}" alt="">
												</a>
												<div class="tlt_wrap">
													<a>
														<span class="sb_tlt"> ${product.p_name} </span>
													</a>
													<p class="color_op">
														color : ${product.p_color}
														<span class="and_line">/</span>
														size : ${size}
													</p>
												</div>
											</div>
										</td>
										<td>${quan}</td>
										<td>
											<div>
												<span> ₩ <fmt:formatNumber value="${product.p_price*quan}" pattern="#,###"/> </span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="title_wrap clearfix mt40">
							<h4 class="float_left">주문자 정보</h4>
	                    </div>
	                    <div class="tblwrap">
	                    	<table class="tbl_wtype1">
	                    		<caption>주문자 정보</caption>
	                    		<colgroup>
	                            	<col style="width: 140px"> <col>
	                         </colgroup>
	                             <tbody>
	                             	<tr>
	                             		<th scope="row" class="th_space">주문자</th>
	                             		<td> ${member.m_name} </td>
	                             	</tr>
	                             	<tr>
	                             		<th scope="row" class="th_space">휴대폰</th>
	                             		<td> ${member.m_phone} </td>	
	                             	</tr>
	                             </tbody>
	                    	</table>
	                    </div>
	                    <!-- 배송지 정보 -->
	                    <div class="title_wrap clearfix mt40">
	                    	<h4 class="float_left">배송지 정보</h4>
	                    	<p class="reqd_txt none">
	                        	<strong class="reqd">*</strong>
	                         	표시는 필수항목입니다.
	                         </p>
	                    </div>
	                    <div class="tblwrap">
	                    	<table class="tbl_wtype1">
	                    		<caption>배송지 정보</caption>
	                    		<colgroup>
	                               <col style="width: 140px">
	                               <col>
	                            </colgroup>
	                            <tbody>
	                            	<tr>
		                            	<th scope="row">
		                            		<strong class="reqd">*</strong>
		                            		<label for="adress">배송지 주소</label>
		                            	</th>
		                            	<td>
		                            		<div>
		                            			<input class="post_wall top" type="text" value="${member.m_address}">
		                            		</div>
		                            	</td>
	                            	</tr>
	                            	<tr>
	                            		<th scope="row">
	                            			<strong class="reqd">*</strong>
	                            			<label for="rcpt_name">수령인</label>
	                            		</th>
	                            		<td>
	                            			<input title="수령인" maxlength="13" type="text" style="width: 118px;" value="${member.m_name}">
	                            		</td>
	                            	</tr>
	                            	<tr>
	                            		<th scope="row">
	                            			<strong class="reqd">*</strong>
	                            			<label for="hp">휴대폰 번호</label>
	                            		</th>
	                            		<td>
	                            			<input type="text" maxlength="13" value="${member.m_phone}">
	                            		</td>
	                            	</tr>
	                            	<tr>
	                            </tbody>
	                    	</table>
	                    </div>
	                    <!-- 결제수단 선택 -->
	                    <div class="title_wrap mt40">
	                    	<h4 class="float_left">결제 수단 선택</h4>
						</div>
						<div class="tblwrap">
							<table class="tbl_wtype1">
								<caption>결제 수단 선택</caption>
								<colgroup>
                                        <col style="width: 140px">
                                        <col>
                                </colgroup>
                                <tbody>
                                	<tr>
                                		<th scope="row" class="th_space">결제수단 선택</th>
                                		<td>
	                                		<div class="rd_wrap">
	                                			<ul>
	                                				<li>
	                                					<input type="radio" checked="checked" name="pay">
	                                					<label class="mr20 one_click_pay">계좌이체</label>
	                                				</li>
	                                				<li>
	                                					<input type="radio" name="pay">
	                                					<label class="mr20 one_click_pay">핸드폰 결제</label>
	                                				</li>
	                                				<li>
	                                					<input type="radio" name="pay">
	                                					<label class="mr20 one_click_pay">카드 결제</label>
	                                				</li>
	                                			</ul>
	                                		</div>
	                                	</td>
                                	</tr>
                                </tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="float_right" style="position: absolute; left: 680px; top: 336px;">
				<div class="sum_box">
					<div>
						<p class="tlt">최종 결제 금액</p> <hr>
						<div class="total">
							<dl>
								<dt>합계</dt>
								<dd id="totalPrice">₩ <fmt:formatNumber value="${product.p_price*quan}" pattern="#,###"/></dd>
							</dl>
						</div>
					</div>
				</div>
				<span id="doOrderBtn">
					<input type="submit" class="btn gray" onclick="javascript: form.action='gly?command=order_insert';" value="결제하기">
                </span>
			</div>
		</form>
	</div>
	<%-- <%@ include file="../layout/footer.jsp"%> --%>
</body>
</html>
