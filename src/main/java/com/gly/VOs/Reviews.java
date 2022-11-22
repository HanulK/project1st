package com.gly.VOs;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Reviews {
	private String 		m_id;		// 고객 ID
	private int    		p_id;		// 제품 상세 번호
	private int			score;		// 별점(0-5)
	private String		text;		// 구매평
	private Timestamp 	date;		// 리뷰 등록 날짜
}
