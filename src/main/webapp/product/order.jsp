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
<link rel="icon" href="assets/img/favicon.ico" />
<title>๐๐๐ฌ</title>
</head>
<body>
	<%@ include file="/layout/header.jsp"%>
	<div style="margin-top:100px;">
		<h3 class="cnts_title">
			<span>๋ฐฐ์ก&๊ฒฐ์ ์ ๋ณด ์๋ ฅ</span>
	    </h3>
    </div>
    <div class="orderwrap">
		<form action="gly?command=order_insert&orderCase=${orderCase}" method="post">
			<div class="sub_container">
					<div class="float_left">
						<div class="tblwrap">
							<table>
								<caption>๋ฐฐ์ก&๊ฒฐ์ ์ ๋ณด ์๋ ฅ</caption>
								<colgroup>
	                            	<col>
	                            	<col style="width: 66px">
									<col style="width: 158px">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">์ํ์ ๋ณด</th>
										<th scope="col">์๋</th>
										<th scope="col">ํ๋งค๊ฐ</th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${products}" var="products" varStatus="status">
									<tr class="al_middle">
										<td class="frt">
											<div class="pt_list_all">
												<a>
													<img src="${products.p_img_src}" alt="">
												</a>
												<div class="tlt_wrap">
													<a>
														<span class="sb_tlt"> ${products.p_name} </span>
														<input type="hidden" name="productName" value="${products.p_name}"/>
													</a>
													<p class="color_op">
														color : ${products.p_color}
														<input type="hidden" name="productColor" value="${products.p_color}"/>
														<span class="and_line">/</span>
														size : ${products.p_size}
														<input type="hidden" name="productSize" value="${products.p_size}"/>
													</p>
												</div>
											</div>
										</td>
										<td>${quantitys[status.index]}
										<input type="hidden" name="quantity" value="${quantitys[status.index]}"/>
										</td>
										<td>
											<div>
												<span> โฉ <fmt:formatNumber value="${products.p_price*quantitys[status.index]}" pattern="#,###"/> </span>
											</div>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="title_wrap clearfix mt40">
							<h4 class="float_left">์ฃผ๋ฌธ์ ์ ๋ณด</h4>
	                    </div>
	                    <div class="tblwrap">
	                    	<table class="tbl_wtype1">
	                    		<caption>์ฃผ๋ฌธ์ ์ ๋ณด</caption>
	                    		<colgroup>
	                            	<col style="width: 140px"> <col>
	                         </colgroup>
	                             <tbody>
	                             	<tr>
	                             		<th scope="row" class="th_space">์ฃผ๋ฌธ์</th>
	                             		<td> ${member.m_name} </td>
	                             	</tr>
	                             	<tr>
	                             		<th scope="row" class="th_space">ํด๋ํฐ</th>
	                             		<td> ${member.m_phone} </td>	
	                             	</tr>
	                             </tbody>
	                    	</table>
	                    </div>
	                    <!-- ๋ฐฐ์ก์ง ์ ๋ณด -->
	                    <div class="title_wrap clearfix mt40">
	                    	<h4 class="float_left">๋ฐฐ์ก์ง ์ ๋ณด</h4>
	                    	<p class="reqd_txt none">
	                        	<strong class="reqd">*</strong>
	                         	ํ์๋ ํ์ํญ๋ชฉ์๋๋ค.
	                         </p>
	                    </div>
	                    <div class="tblwrap">
	                    	<table class="tbl_wtype1">
	                    		<caption>๋ฐฐ์ก์ง ์ ๋ณด</caption>
	                    		<colgroup>
	                               <col style="width: 140px">
	                               <col>
	                            </colgroup>
	                            <tbody>
	                            	<tr>
	                            		<th scope="row">
	                            			<strong class="reqd">*</strong>
	                            			<label for="rcpt_name">์๋ น์ธ</label>
	                            		</th>
	                            		<td>
	                            			<input title="์๋ น์ธ" maxlength="13" type="text" style="width: 118px;" 
	                            			name="receiver" value="${member.m_name}">
	                            		</td>
	                            	</tr>
	                            	<tr>
	                            		<th scope="row">
	                            			<strong class="reqd">*</strong>
	                            			<label for="hp">ํด๋ํฐ ๋ฒํธ</label>
	                            		</th>
	                            		<td>
	                            			<input type="text" maxlength="13" 
	                            			name="receiverPhone" value="${member.m_phone}">
	                            		</td>
	                            	</tr>
	                            	<tr>
		                            	<th scope="row">
		                            		<strong class="reqd">*</strong>
		                            		<label for="receiverAddress">๋ฐฐ์ก์ง ์ฃผ์</label>
		                            	</th>
		                            	<td>
		                            		<div>
		                            			<input class="post_wall top" type="text" 
		                            			name="receiverAddress" value="${member.m_address}">
		                            		</div>
		                            	</td>
	                            	</tr>
	                            </tbody>
	                    	</table>
	                    </div>
	                    <!-- ๊ฒฐ์ ์๋จ ์ ํ -->
	                    <div class="title_wrap mt40">
	                    	<h4 class="float_left">๊ฒฐ์  ์๋จ ์ ํ</h4>
						</div>
						<div class="tblwrap">
							<table class="tbl_wtype1">
								<caption>๊ฒฐ์  ์๋จ ์ ํ</caption>
								<colgroup>
                                        <col style="width: 140px">
                                        <col>
                                </colgroup>
                                <tbody>
                                	<tr>
                                		<th scope="row" class="th_space">๊ฒฐ์ ์๋จ ์ ํ</th>
                                		<td>
	                                		<div class="rd_wrap">
	                                			<ul>
	                                				<li>
	                                					<input type="radio" checked="checked" name="pay" value="0">
	                                					<label class="mr20 one_click_pay">์นด๋ ๊ฒฐ์ </label>
	                                				</li>
	                                				<li>
	                                					<input type="radio" name="pay" value="1">
	                                					<label class="mr20 one_click_pay">ํธ๋ํฐ ๊ฒฐ์ </label>
	                                				</li>
	                                				<li>
	                                					<input type="radio" name="pay" value="2">
	                                					<label class="mr20 one_click_pay">๊ณ์ข์ด์ฒด</label>
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
			<div class="float_right">
				<div class="sum_box">
					<div>
						<p class="tlt">์ต์ข ๊ฒฐ์  ๊ธ์ก</p> <hr>
						<div class="total">
							<dl>
								<dt>ํฉ๊ณ</dt>
								<dd id="totalPrice">โฉ <fmt:formatNumber value="${totalPrice}" pattern="#,###"/></dd>
							</dl>
						</div>
					</div>
				</div>
				<span id="doOrderBtn">
				<input type="submit" class="btn gray" value="๊ฒฐ์ ํ๊ธฐ">
                </span>
			</div>
		</form>
	</div>
	<%-- <%@ include file="../layout/footer.jsp"%> --%>
</body>
</html>

<!-- Hansol, Hanul -->