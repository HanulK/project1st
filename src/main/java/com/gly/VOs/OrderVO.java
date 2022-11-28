package com.gly.VOs;

import java.sql.*;

import lombok.*;

@Getter
@Setter
public class OrderVO {
	private int 		o_id; 			// 주문 번호
	private Timestamp 	o_indate; 		// 주문 일자
	private String 		o_address; 		// 상품 배송 주소
	private int 		o_way; 			// 결제 수단(0: 카드, 1:핸드폰, 2:계좌)
	private int 		o_state; 		// 주문 상태(0: 입금대기중, 1: 결제완료, 2:배송준비중, 3:배송중, 4:배송완료)
	private int 		o_quantity; 	// 수량
	
	private String 		m_id; 			// 주문 고객
	private String 		m_name;			// 고객 이름
	private String 		m_email;		// 고객 이메일
	private String		m_phone;		// 고객 전화번호
	private String 		m_address;		// 기존 고객 주소

	private int 		p_d_id; 		// 제품 상세 번호
	private String 		p_name; 		// 상품 이름
	private String 		p_color; 		// 제품 색상
	private int 		p_szie; 		// 제품 사이즈 (0:free, 44, 55, 66, 225, 230)
	private int 		p_price; 		// 상품 가격
	private String		img_src;		// 상품 이미지 링크
	private int			p_id;			//상품 번호
}