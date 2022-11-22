package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDetatilVO {
	private int 		o_id;			// 주문 번호
	private int 		p_d_id;			// 제품 상세 번호
	private int 		quantity;		// 수량
}
