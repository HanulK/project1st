package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartVO {
	private int 	c_id;		// 카트 ID
	private String 	m_id;		// 고객 ID
	private String 	p_d_id;		// 제품 상세 번호
	private int 	quantity;	// 수량
}
