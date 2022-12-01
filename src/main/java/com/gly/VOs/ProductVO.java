package com.gly.VOs;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
	private int 			p_id; 			// 상품 번호
	private String 		p_name; 		// 상품 이름
	private String 		p_content; 		// 상품 설명
	private int 			p_kind;			// 상품 분류(0:여성, 1:남성, 2:잡화)
	private Timestamp 	p_indate; 		// 상품 등록일
	private int 			p_price; 		// 상품 가격

	private int 			p_d_id; 		// 상품 상세 번호
	private String 		p_color; 		// 제품 색상
	private int 			p_size; 		// 제품 사이즈 (0:free, 44, 55, 66, 225, 230)
	private String 		p_img_src;
	
	
}
