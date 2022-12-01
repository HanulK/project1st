package com.gly.VOs;

import java.sql.*;

import lombok.*;

@Getter
@Setter
public class ReviewVO {
	private String 		m_id;			// 고객 ID
	private int 		p_id; 			// 상품 번호
	private int			r_score;		// 별점(0-5)
	private String		r_text;			// 구매평
	private Date 		r_indate;		// 리뷰 등록 날짜
	private String 		p_name;				//상품정보
	private String		r_title;		//리뷰내용
	private String 		p_src;			//이미지src
}
