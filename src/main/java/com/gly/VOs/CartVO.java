package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private String 		m_id;			// 고객 ID
	private int 		p_d_id; 		// 상품 상세 번호
	private int 		c_quantity;		// 수량
	private int 		p_price; 		// 상품 가격
	private String		img_src;		// 상품 이미지 링크
	
	public String m_id() {
		return m_id;
	}
	public int p_d_id() {
		return p_d_id;
	}
	public int c_quantity() {
		return c_quantity;
	}
	public int p_price() {
		return p_price;
	}
	public String img_src() {
		return img_src;
	}
}
