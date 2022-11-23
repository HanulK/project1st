package com.gly.VOs;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private String 		m_id;			// 고객 ID
	private int 		p_id; 			// 상품 번호
	private int			r_score;		// 별점(0-5)
	private String		r_text;			// 구매평
	private Timestamp 	r_indate;		// 리뷰 등록 날짜
}
