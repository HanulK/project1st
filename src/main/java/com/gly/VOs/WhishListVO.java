package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class WhishListVO {
	private String 		m_id;			// 고객 ID
	private int 		p_id; 			// 상품 번호
	private int 		p_price; 		// 상품 가격
	private String		img_src;		// 상품 이미지 링크
}
