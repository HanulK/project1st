package com.gly.VOs;

import lombok.*;

@Getter
@Setter
public class CartVO {
	private String 		m_id;			// 고객 ID
	private int 		p_d_id; 		// 상품 상세 번호
	private int 		c_quantity;		// 수량
	private int 		p_price; 		// 상품 가격
	private String		img_src;		// 상품 이미지 링크
	private String		p_name;			// 상품이름
	private String		p_color;		// 상품색상
	private int			p_size;			// 상품 사이즈
}
