<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<link href="css/main.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<meta charset="UTF-8">
<link rel="icon" href="assets/img/favicon.ico" />
<title>𝗚𝗟𝗬</title>
</head>
<body>
   <%@ include file="/layout/header.jsp"%>
   <%@ include file="/layout/collectRecnetItem.jsp"%>
   <div class="bodywrap">
      <div class="slider-1">
         <div class="slides">
            <div class="active"
               style="background-image: url(http://www.thehandsome.com/medias/221111-A-weeklypick-02.jpg?context=bWFzdGVyfGltYWdlc3w2ODYxNHxpbWFnZS9qcGVnfGltYWdlcy9oYjQvaDcyLzkzNDg2MTI0NTY0NzguanBnfGZiNjRkZTdmNWQwMGViYzU5NDg1ZGUwNDVmY2JiNmFiZTgzMGNkYzc3YWZlN2EwM2UzOWY4OTVjM2VhNzU5MTg);"></div>
            <div
               style="background-image: url(http://www.thehandsome.com/medias/221123-A-outer-08.jpg?context=bWFzdGVyfGltYWdlc3w1OTEzM3xpbWFnZS9qcGVnfGltYWdlcy9oMWYvaDJlLzkzNTEyOTk3NjAxNTguanBnfDNkNzU0OWQyYzg5NmUzYmQ5YWQ2N2FhMTBlMjlkYzFlY2EyZWE4Y2U3YmU0YmY4MDRkMTFiZjMyY2IwNzgyMGU);"></div>
            <div
               style="background-image: url(http://www.thehandsome.com/medias/221125-A-weeklypick-01.jpg?context=bWFzdGVyfGltYWdlc3w3NDQ4OXxpbWFnZS9qcGVnfGltYWdlcy9oN2IvaGM3LzkzNTE4ODMwMzA1NTguanBnfDE3YmNjOGFiYzhiNGFhOThmMzM3ZDYzOGM4OWYwNjUwM2I0Njg5Y2Q4MjA2ZWMyZWIwZDUyNDQ3M2VmNGU4ZGM);"></div>
            <div
               style="background-image: url(http://www.thehandsome.com/medias/A-beautyholiday-09.jpg?context=bWFzdGVyfGltYWdlc3w5NzQzNXxpbWFnZS9qcGVnfGltYWdlcy9oYzUvaDZhLzkzNTIwNzcxODA5NTguanBnfGQzMWM4ZmVmNTAwZGE3NTI4ZTRhOGU5MzNhNzExOGZlZDdlZjJmZTQzMjM2MTNhYzJiOGRlMDQ5OTM1ZTM0YjA);"></div>
            <div
               style="background-image: url(http://www.thehandsome.com/medias/221121-A-rest-023.jpg?context=bWFzdGVyfGltYWdlc3w0MTMyMnxpbWFnZS9qcGVnfGltYWdlcy9oNTUvaDZjLzkzNTA4MjU0NzYxMjYuanBnfDQwN2I1NmVjZWM2MzlmYWIxYmU4MjExMDJiZWFjZWQwMmQzZGZkOWU0NGFmOWJjMGNhM2EwMzJmYmZlYjUwYzI);"></div>
         </div>
         <div class="page-btns">
            <div class="active"></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
         </div>
         <div class="side-btns">
            <div>
               <span><i class="fas fa-angle-left" style="font-size:40px; color:white;"></i></span>
            </div>
            <div>
               <span><i class="fas fa-angle-right" style="font-size:40px; color:white;"></i></span>
            </div>
         </div>
      </div>

      <div class="video_main_wrap">
         <div class="video_area1903">
            <video
               src="http://s3.ap-northeast-2.amazonaws.com/cdn.thehandsome.com-kr/pc/0_main_video/221118_systemhomme/systemhomme_video.mp4"
               autoplay loop muted></video>
         </div>
         <div class="txt">
            <p class="tit">Be in the Warmth</p>
            <p class="s_t">
               계절을 감싸 안는 아우터<br>시스템옴므 2022 아우터 컬렉션
            </p>
         </div>
      </div>
      <div class="main_container">
         <div class="product_list1903">
            <div class="nbe_cnt new">
               <div class="product_left_menu">
                  <h4 class="tit">신상품</h4>
                  <ul>
                     <li class="newItem"><a href="gly?command=item_all&kind=0">여성</a></li>
                     <li class="newItem"><a href="gly?command=item_all&kind=1">남성</a></li>
                     <li class="newItem"><a href="gly?command=item_all&kind=2">포인트 ACC.</a></li>
                  </ul>
               </div>
               <div class="swiper-container">
                  <ul class="swiper-wrapper">
                     <c:forEach items="${newProductList}" var="imageVO">
                        <li>
                           <div class="item_box">
                              <a href="gly?command=product_detail&pid=${imageVO.id}" onclick="javascript:moveItemPage(${imageVO.id},'${imageVO.name}','${imageVO.imgSrc}',${imageVO.price}); return false;" >
                              <span class="item_img"> <img src="${imageVO.imgSrc}" alt="" class="respon_image" >
                              </span>
                              </a> <a href="#" class="item_info2"> <span class="brand">${imageVO.name}</span> <span
                                 class="price"> ₩ <fmt:formatNumber value="${imageVO.price}" pattern="#,###"/> </span>
                              </a>
                           </div>
                        </li>
                     </c:forEach>
                  </ul>
               </div>
            </div>
            <div class="nbe_cnt best">
               <div class="product_left_menu">
                  <h4 class="tit">베스트</h4>
                  <ul>
                     <li class="newItem"><a href="gly?command=item_all&kind=0">여성</a></li>
                     <li class="newItem"><a href="gly?command=item_all&kind=1">남성</a></li>
                  </ul>
               </div>
               <div class="swiper-container">
                  <ul class="swiper-wrapper">
                     <c:forEach items="${bestProductList}" var="imageVO">
                        <li>
                           <div class="item_box">
                              <a href="gly?command=product_detail&pid=${imageVO.id}" onclick="javascript:moveItemPage(${imageVO.id},'${imageVO.name}','${imageVO.imgSrc}',${imageVO.price}); return false;">
                                 <span class="item_img">
                                    <img src="${imageVO.imgSrc}" alt="" class="respon_image">
                                 </span>
                              </a> <a href="#" class="item_info2"> <span class="brand">${imageVO.name}</span> <span
                                 class="price"> ₩ <fmt:formatNumber value="${imageVO.price}" pattern="#,###"/> </span>
                              </a>
                           </div>
                        </li>
                     </c:forEach>
                  </ul>
               </div>
            </div>
            <div class="edt_banner_inner2">
               <div class="edt_banner">
                  <ul>
                     <li><img
                           src="http://www.thehandsome.com/medias/221128-C-bally-02.jpg?context=bWFzdGVyfGltYWdlc3wyMTYzN3xpbWFnZS9qcGVnfGltYWdlcy9oMjAvaDI5LzkzNTIzNjc4NjU4ODYuanBnfDliMzJhM2YwOWI5YzgyMGJlODhlMGUzZTVjMjE0NTYzNmFhMjVjYjMxYTM4ZDgyMjNlOTA1MGFhNTAxOGMwZWY"
                           alt="기획전 배너">
                           <div class="ban_txt_wrap">
                              <span class="sticker" style="background: #e16a6a;">new</span>
                              <p class="s_title">
                                 <font color="#ffffff">발리의 컬링 테마와 아웃라인 스니커즈</font>
                              </p>
                              <p class="title">
                                 <font color="#ffffff">BALLY WINTER</font>
                              </p>
                           </div>
                     </li>
                     <li><img
                           src="http://www.thehandsome.com/medias/221118-C-latt.jpg?context=bWFzdGVyfGltYWdlc3w4NzUxN3xpbWFnZS9qcGVnfGltYWdlcy9oNGYvaDY1LzkzNTAyMTI1ODM0NTQuanBnfDRiOTg0NmQ4ODA5N2UxM2E5ZjA2NGIzYzczNzBjOGY3MDA0NDZmNmU0MTllZTliNjZjODNkMjU4OWRiN2NjMjQ"
                           alt="기획전 배너">
                           <div class="ban_txt_wrap">
                              <span class="sticker" style="background: #99a5d7;">style giude</span>
                              <p class="s_title">
                                 <font color="#FFFFFF">스타일리스트 정윤기가 제안하는 KEY LOOK</font>
                              </p>
                              <p class="title">
                                 <font color="#FFFFFF">LÄTT X YK JEONG</font>
                              </p>
                           </div>
                     </li>
                     <li> <img
                           src="http://www.thehandsome.com/medias/221118-c-timehomme.jpg?context=bWFzdGVyfGltYWdlc3w1MTgwNHxpbWFnZS9qcGVnfGltYWdlcy9oNGEvaGEyLzkzNTAyMTI5NzY2NzAuanBnfDlkNzhlMTE4YTI3MDBjNzhhNTI5MTVlMDIzMzdjYjA4MTU0YjFhY2MyNWZiNGJmM2U5NTU5ZTEyNzE2MDMzMGU"
                           alt="기획전 배너">
                           <div class="ban_txt_wrap">
                              <span class="sticker" style="background: #e99143;">we love</span>
                              <p class="s_title">
                                 <font color="#ffffff">타임옴므의 윈터 아우터 제안</font>
                              </p>
                              <p class="title">
                                 <font color="#ffffff">겨울을 준비하는 자세</font>
                              </p>
                           </div>
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <%@ include file="/layout/showRecentItem.jsp"%>
   </div>
   <%@ include file="/layout/footer.jsp"%>
<script>
console.clear();
//writer hansol;
//출처 https://codepen.io/kimyangsun/pen/XWJeJVj
//기존 버튼형 슬라이더
$('.slider-1 > .page-btns > div').click(function(){
 var $this = $(this);
 var index = $this.index();
 
 $this.addClass('active');
 $this.siblings('.active').removeClass('active');
 
 var $slider = $this.parent().parent();
 
 var $current = $slider.find(' > .slides > div.active');
 
 var $post = $slider.find(' > .slides > div').eq(index);
 
 $current.removeClass('active');
 $post.addClass('active');
});

//좌/우 버튼 추가 슬라이더
$('.slider-1 > .side-btns > div').click(function(){
 var $this = $(this);
 var $slider = $this.closest('.slider-1');
 
 var index = $this.index();
 var isLeft = index == 0;
 
 var $current = $slider.find(' > .page-btns > div.active');
 var $post;
 
 if ( isLeft ){
     $post = $current.prev();
 }
 else {
     $post = $current.next();
 };
 
 if ( $post.length == 0 ){
     if ( isLeft ){
         $post = $slider.find(' > .page-btns > div:last-child');
     }
     else {
         $post = $slider.find(' > .page-btns > div:first-child');
     }
 };
 
 $post.click();
});

setInterval(function(){
 $('.slider-1 > .side-btns > div').eq(1).click();
}, 3000);


</script>
</body>
</html>