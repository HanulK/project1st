<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="sub-container">
	<div class="profile">
		<span>김주혜님</span>
	</div>
	<div class="title-wrap">
		<h4>최근주문</h4>
		<p>최근 1개월 내 주문하신 내역입니다.</p>
	</div>
	<div class="table-wrap">
		<table class="tbl_ltype">
			<caption>상품평 리스트</caption>
			<colgroup>
				<col style="width:120px">
				<col>
				<col style="width:42px">
				<col style="width:107px">
				<col style="width:108px">
				<col style="width:96px">
			</colgroup>
			<thead>
				 <tr>
				 	<th scope="col">주문번호</th>
					<th scope="col">상품정보</th>
					<th scope="col" style="padding:15px 0">수량</th>
					<th scope="col">판매가</th>
					<th scope="col">주문상태</th>
					<th scope="col">구분</th>
				 </tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="6" class="no_data">
						최근 한달 간 주문내역이 없습니다.
					</td>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="title-wrap line mt50">
			<h4>위시리스트</h4>
		</div>
		<ul class="wish-wrap">
			<li>
				<a>
					<img src="http://newmedia.thehandsome.com/IL/2C/FW/IL2C9TTO870N_BK_S01.jpg">
					<span class="brand">LATT</span>
					<span class="tlt">울 블렌드 하이넥 탑</span>
				</a>
				<span class="price">￦ 145,000</span>
			</li>
		</ul>
	</div>
</body>
</html>