<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/headerNav.css" rel="stylesheet" />
<meta charset="UTF-8" />
<title>Insert title here</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	const LATELY_VIEW_ITEM_EXPIRATION_DATE = 1;
	const LATELY_VIEW_ITEM_MAX_SAVE_COUNT = 6;

	$(document).ready(function() {
	 	initLatelyItemList();
	});
	
	// null check 함수
	function isNull(obj) {
		 if(obj == '' || obj == null || obj == undefined || obj == NaN){ 
		  	return true;
		 } else {
		  	return false;
		 }
	}
	
	// local storage 저장 함수
	function setLocalStorage(name,obj) {
 		localStorage.setItem(name, obj);
	}
	
	// local storage 삭제 함수
	function removeLocalStorage(name) {
 		localStorage.removeItem(name);
	}
	
	// local storage에서 특정 객체 추출
	function getItemLocalStorage(name) {
 		return localStorage.getItem(name);
	}
	
	// 최근 본 상품 리스트 랜더링
	function initLatelyItemList() {
		if(isNull(getItemLocalStorage('latelyItemList'))) {
			setLocalStorage('latelyItemList',null);
			$("ul#latelyItemList_ul").append('<li>찾아본<br>상품이<br>없습니다.</li>');
		} else {
			var latelyItemListJson = getItemLocalStorage('latelyItemList');
            
			if(latelyItemListJson != "null" || isNull(latelyItemListJson)) {
				var nowDate = new Date();
				var latelyItemList = JSON.parse(latelyItemListJson);

				var latelyItemListNew = new Array();

				for(var i in latelyItemList) {
					var viewTime = new Date(latelyItemList[i].viewTime);
					if(nowDate.getTime() < viewTime.getTime()) {
 						latelyItemListNew.push(latelyItemList[i]);
					}
				}
                
				if(latelyItemListNew.length == 0) {
				    setLocalStorage('latelyItemList',null);
				} else {
				    setLocalStorage('latelyItemList',JSON.stringify(latelyItemListNew));
				}
			}
			LatelyItemRender();
		}
	}
	
	
	// 최근 본 상품 화면 세팅
	function LatelyItemRender() {
 		$("ul#latelyItemList_ul").empty();
  
 		if(getItemLocalStorage('latelyItemList') != "null" || isNull(getItemLocalStorage('latelyItemList'))) {
  			var latelyItemList = JSON.parse(getItemLocalStorage('latelyItemList'));
  			var length = latelyItemList.length;

  			$("div#latelyItemListPageing_div").css("display","block");
  			
  			for(var i=0; i<LATELY_VIEW_ITEM_MAX_SAVE_COUNT; i++){
  				if(!isNull(latelyItemList[i])) {
					
  					$("ul#latelyItemList_ul").append($("<li>")
							.append(	$("<a>").attr("href","gly?command=product_detail&pid="+latelyItemList[i].p_id)
            				.append($("<img>").attr("src",latelyItemList[i].img_src).attr("alt","최근본상품")))
            				.append($("<a>").attr("href","gly?command=product_detail&pid="+latelyItemList[i].p_id)
            				.append($("<span>").attr)));
  				}
  			}
 		} else {
            //상품이 없을경우
  			$("ul#latelyItemList_ul").append('<li>찾아본<br>상품이<br>없습니다.</li>');
  			$("div#latelyItemListPageing_div").css("display","none");
		 }
	}
	
	// 최근 본 상품 리스트 정보 수집
	function moveItemPage(p_id,p_name,img_src,p_price) {
		 var latelyItemListJson = getItemLocalStorage('latelyItemList');
		 var viewTime = new Date();
		 
		 if(latelyItemListJson == "null" || isNull(latelyItemListJson)) {
		 	var latelyItemListNew = new Array();
		  
			var latelyItem = {
			 	"p_id" : p_id
			 	,"p_name" : p_name
			 	,"img_src" : img_src
			 	,"viewTime" :viewTime.setDate(viewTime.getDate() + Number(LATELY_VIEW_ITEM_EXPIRATION_DATE))
			 	,"p_price" : p_price
			}
		  
		  	latelyItemListNew.unshift(latelyItem);
		  	setLocalStorage('latelyItemList',JSON.stringify(latelyItemListNew));

		 } else {
			 //최근 본 상품이 있을경우
		  	 var latelyItemList = JSON.parse(latelyItemListJson);
		  	 var isExistsItem = false;

		  	 breakPoint : for(var i in latelyItemList) {
		   		 if(Number(latelyItemList[i].p_id) == Number(p_id)){
		    			isExistsItem = true; 
		    			break breakPoint;
		   		 }
		     } // end breakpoint 정의
		  
		   	 if(!isExistsItem) {
		   	 	if(latelyItemList.length == Number(LATELY_VIEW_ITEM_MAX_SAVE_COUNT))
		   	 		latelyItemList.pop();
		   
		   		var latelyItem = {
		    			"p_id" : p_id
		    			,"p_name" : p_name
		    			,"img_src" : img_src
		    			,"viewTime" :viewTime.setDate(viewTime.getDate() + Number(LATELY_VIEW_ITEM_EXPIRATION_DATE))
		    			,"p_price" : p_price
		   		}
		   		latelyItemList.unshift(latelyItem);
		   		setLocalStorage('latelyItemList',JSON.stringify(latelyItemList));
		  	}
		 }

		 location.href="gly?command=product_detail&pid=" + p_id;
	}

	
</script>
</head>
<body>

<!-- <ul id="latelyItemList_ul">
</ul> -->
	
</body>
</html>
