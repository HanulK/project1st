package com.gly.controller;

import com.gly.controllerAction.*;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory  :" + command);

		if (command.equals("index")) { 				    // main page
			action = new IndexAction();                
		} else if (command.equals("product_detail")) {  // 제품 상세 page
			action = new ProductDetailAction();        
		} else if (command.equals("join_form")) { 	    // 회원 가입 page
			action = new JoinFormAction();             
		} else if (command.equals("id_check_form")) {   // 회원 가입 - 중복 확인 체크
			action = new IdCheckFormAction();          
		} else if (command.equals("join")) {            // 회원 가입 페이지
			action = new JoinAction();                 
		} else if (command.equals("login_form")) {      // 로그인 페이지
			action = new LoginFormAction();            
		} else if (command.equals("delete_member")) {   // 회원 탈퇴
			action = new DeleteMember();               
		} else if (command.equals("login")) {           // 로그인 작성 후 데이터 보내기
			action = new LoginAction();                
		} else if (command.equals("logout")) {          // 로그아웃
			action = new LogoutAction();               
		} else if (command.equals("cart_insert")) {     // 장바구니 담기
			action = new CartInsertAction();           
		} else if (command.equals("cart_list")) {       // 장바구니 가기
			action = new CartListAction();             
		} else if (command.equals("cart_delete")) {     // 장바구니 삭제
			action = new CartDeleteAction();
		} else if (command.equals("order_detail")) {    // 주문 상세 입력폼 가기
			action = new OrderSettingAction();
		} else if (command.equals("order_insert")) {    // 주문하기
			action = new OrderInsertAction();
		} else if (command.equals("order_list")) {      // 주문 내역 (전체)
			action = new OrderListAction();
		} else if (command.equals("mypage")) {          // 마이페이지 가기
			action = new MyPageAction();
		} else if (command.equals("change_info")) {     // 개인 정보 변경 폼으로 가기
			action = new ChangeInfoAction();
		} else if (command.equals("change_infoForm")) { // 개인 정보 변경하기
			action = new ChangeInfoFormAction();
		} else if (command.equals("item_all")) {        // 카테고리별 상품 보기
			action = new ProductKindAction();
		} else if (command.equals("search")) { 			// 검색 상품 조회
			action = new ItemSearchAction();
		} else if (command.equals("rate")) { 			// 상품평 리스트 보기
			action = new RateListAction();
		} else if (command.equals("rate_form")) {	    // 상품평 폼 이동
			action = new RateFormAction();
		} else if (command.equals("write_review")) {	// 상품평 쓰기
			action = new ReviewWriteAction();
		} else if (command.equals("rate_delete")) {     // 상품평 삭제
			action = new RateDeleteAction();
		} else if (command.equals("rate_filter")) {     // 점수별 필터링
			action = new RateFilterAction();
		} else if (command.equals("cart_update")) {     // 장바구니 내 상품 수량 변경
			action = new CartUpdateAction();
		}

		return action;
	}
}