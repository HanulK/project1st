package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVO {
	private int 		o_id;			// 주문 번호
	private String 		m_id;			// 주문 고객
	private Timestamp 	indate;			// 주문 일자
	private String 		address;		// 배송 주소
	private int 		way;			// 결제 수단(0: 카드, 1:핸드폰, 2:계좌)
	private int 		state;			// 주문 상태(0: 입금대기중, 1: 결제완료, 2:배송준비중, 3:배송중, 4:배송완료)
}
