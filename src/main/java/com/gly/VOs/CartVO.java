package com.gly.VOs;

import lombok.*;
//writer : juhye
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
	private int			p_id;			// 상품 번호
	
	
//	public void setM_id(String m_id) {
//		this.m_id = m_id;
//	}
//	public int getP_d_id() {
//		return p_d_id;
//	}
//	public void setP_d_id(int p_d_id) {
//		this.p_d_id = p_d_id;
//	}
//	public int getC_quantity() {
//		return c_quantity;
//	}
//	public void setC_quantity(int c_quantity) {
//		this.c_quantity = c_quantity;
//	}
//	public int getP_price() {
//		return p_price;
//	}
//	public void setP_price(int p_price) {
//		this.p_price = p_price;
//	}
//	public String setImg_src() {
//		return img_src;
//	}
//	public void getImg_src(String img_src) {
//		this.img_src = img_src;
//	}
	
}
