////// 작성자 : 한울, 세영
//////	출처 : 블로그(http://nerobong2.blogspot.com/2018/02/javascriptlocalstorage.html)
const itemExpirationDate = 1;
const itemMax = 6;

function isNull(obj) {
	 if (obj == '' || obj == null || obj == undefined || obj == NaN) { return true; }
   else { return false; }
}

function setLocalStorage(name,obj) {
	localStorage.setItem(name, obj);
}
	
function removeLocalStorage(name) {
	localStorage.removeItem(name);
}
	
function getItemLocalStorage(name) {
	return localStorage.getItem(name);
}

function initLatelyItemList() {
	if(isNull(getItemLocalStorage('latelyItemList'))) {
    // local storage에 latelyItemList' 데이터가 없어 null로 초기 생성
		setLocalStorage('latelyItemList',null);
		$("ul.productList").append('<li>찾아 본<br>상품이<br>없습니다.</li>');
	} else {
		var latelyItemListJson = getItemLocalStorage('latelyItemList');
        
		if(latelyItemListJson != "null" || isNull(latelyItemListJson)) {
			var nowDate = new Date();
			var latelyItemList = JSON.parse(latelyItemListJson);
			var latelyItemListNew = new Array();

			for(var i in latelyItemList) {
				var viewTime = new Date(latelyItemList[i].viewTime);
				if(nowDate.getTime() < viewTime.getTime()) {
          // 만료일을 넘지 않은 데이터만 선택
					latelyItemListNew.push(latelyItemList[i]);
				}
			}
            
			if(latelyItemListNew.length == 0) {
			    setLocalStorage('latelyItemList',null);
			} else {
			    setLocalStorage('latelyItemList',JSON.stringify(latelyItemListNew));
			}
		}
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
		 	,"viewTime" :viewTime.setDate(viewTime.getDate() + Number(itemExpirationDate))
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
	   	 	if(latelyItemList.length == Number(itemMax))
	   	 		latelyItemList.pop();
	   
	   		var latelyItem = {
	    			"p_id" : p_id
	    			,"p_name" : p_name
	    			,"img_src" : img_src
	    			,"viewTime" :viewTime.setDate(viewTime.getDate() + Number(itemExpirationDate))
	    			,"p_price" : p_price
	   		}
	   		latelyItemList.unshift(latelyItem);
	   		setLocalStorage('latelyItemList',JSON.stringify(latelyItemList));
	  	}
	 }
	 location.href="gly?command=product_detail&pid=" + p_id;
}

function LatelyItemRender() {
	$("ul.productList").empty();

	if (getItemLocalStorage('latelyItemList') != "null"
			|| isNull(getItemLocalStorage('latelyItemList'))) {
		var latelyItemList = JSON
				.parse(getItemLocalStorage('latelyItemList'));
		var length = latelyItemList.length;

		$("div.newItemsListContent").css("display", "block");

		for (var i = 0; i < itemMax; i++) {
			if (!isNull(latelyItemList[i])) {
				const price = latelyItemList[i].p_price
						.toLocaleString('ko-KR');
				$("ul.productList")
						.append(
								$("<li>")
										.append(
												$("<a>")
														.attr(
																"href",
																"gly?command=product_detail&pid="
																		+ latelyItemList[i].p_id)
														.append(
																$("<img>")
																		.attr(
																				"src",
																				latelyItemList[i].img_src)
																		.attr(
																				"alt",
																				"최근본상품")))
										.append(
												$("<span>")
														.attr("class",
																"item_info2")
														.append(
																$("<p>")
																		.attr(
																				"class",
																				"title")
																		.append(
																				latelyItemList[i].p_name))
														.append(
																$("<p>")
																		.attr(
																				"class",
																				"price")
																		.text(
																				'₩ '
																						+ price))));
			}
		}
	} else {
		$("ul.productList").append('<li>찾아본<br>상품이<br>없습니다.</li>');
	}
}
