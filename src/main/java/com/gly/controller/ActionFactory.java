package com.gly.controller;

import com.gly.controllerAction.*;
//import com.gly.admin.controller.action.*;


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

		if (command.equals("index")) {						// main page
			action = new IndexAction();
		} else if (command.equals("product_detail")) {		// 제품 상세 page
			action = new ProductDetailAction();
		} else if (command.equals("join_form")) {			// 회원 가입 page
			action = new JoinFormAction();
		} else if (command.equals("id_check_form")) {		// 회원 가입 - 중복 확인 체크
			action = new IdCheckFormAction();
		} else if (command.equals("join")) {				// 회원 가입 페이지
			action = new JoinAction();
		} else if (command.equals("login_form")) {			// 로그인 페이지
			action = new LoginFormAction();
		} else if (command.equals("login")) {				// 로그인 작성 후 데이터 보내기
			action = new LoginAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		} else if (command.equals("cart_insert")) {
			action = new CartInsertAction();
		} else if (command.equals("cart_list")) {
			action = new CartListAction();
		} else if (command.equals("cart_delete")) {
			action = new CartDeleteAction();
		} else if (command.equals("order_insert")) {
			action = new OrderInsertAction();
		} else if (command.equals("order_list")) {
			action = new OrderListAction();
		} else if (command.equals("mypage")) {
			action = new MyPageAction();
		} else if (command.equals("order_detail")) {
			action = new OrderDetailAction();
		} else if (command.equals("order_all")) {
			action = new OrderAllAction();
		} else if (command.equals("qna_list")) {
			action = new QnaListAction();
		} else if (command.equals("qna_write_form")) {
			action = new QnaWriteFormAction();
		} else if (command.equals("qna_write")) {
			action = new QnaWriteAction();
		} else if (command.equals("qna_view")) {
			action = new QnaViewAction();
		} else if (command.equals("wish_list_insert")) {
			action = new WishListInsertAction();
		} else if (command.equals("wish_list_list")) {
			action = new WishListAction();
		} else if (command.equals("wish_list_delete")) {
			action = new WishListDeleteAction();
		}

		/*
		// admin
		if (command.equals("admin_login_form")) {
			action = new AdminIndexAction();
		} else if (command.equals("admin_login")) {
			action = new AdminLoginAction();
		} else if (command.equals("admin_logout")) {
			action = new AdminLogoutAction();
		} else if (command.equals("admin_product_list")) {
			action = new AdminProductListAction();
		} else if (command.equals("admin_product_write_form")) {
			action = new AdminProductWriteFormAction();
		} else if (command.equals("admin_product_write")) {
			action = new AdminProductWriteAction();
		} else if (command.equals("admin_product_detail")) {
			action = new AdminProductDetailAction();
		} else if (command.equals("admin_product_update_form")) {
			action = new AdminProductUpdateFormAction();
		} else if (command.equals("admin_product_update")) {
			action = new AdminProductUpdateAction();
		} else if (command.equals("admin_order_list")) {
			action = new AdminOrderListAction();
		} else if (command.equals("admin_order_save")) {
			action = new AdminOrderSaveAction();
		} else if (command.equals("admin_member_list")) {
			action = new AdminMemberListAction();
		} else if (command.equals("admin_qna_list")) {
			action = new AdminQnaListAction();
		} else if (command.equals("admin_qna_detail")) {
			action = new AdminQnaDetailAction();
		} else if (command.equals("admin_qna_repsave")) {
			action = new AdminQnaResaveAction();
		}
		*/
		
		return action;
	}
}