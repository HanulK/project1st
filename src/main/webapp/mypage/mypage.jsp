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
		<span>...님</span>
	</div>
	<div class="title-wrap">
		<h4>최근주문</h4>
		<p>최근 1개월 내 주문하신 내역입니다.</p>
		<div class="btn-wrap">
			<a href="#">전체보기</a>
		</div>
	</div>
	<div class="table-wrap">
		<table>
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
					<th scope="col">수량</th>
					<th scope="col">판매가</th>
					<th scope="col">주문상태</th>
					<th scope="col">구분</th>
				 </tr>
			</thead>
			<tbody>
				<tr>
					<td>
						최근 한달 간 주문내역이 없습니다.
					</td>
				</tr>
			</tbody>
			</table>
		</div>
		<div class="title-wrap line">
			<h4>위시리스트</h4>
			<div class="btn-wrap">
				<a href="#">전체보기</a>
			</div>
		</div>
		<ul class="wish-wrap">
			<li>
				<a>
					<img src="/">
					<span class="brand">브랜드명</span>
					<span class="brand">옷 이름</span>
				</a>
				<span class="brand">가격</span>
			</li>
		</ul>
	</div>
</body>
</html>