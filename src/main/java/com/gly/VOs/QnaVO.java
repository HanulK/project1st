package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnaVO {
	private int q_id; // Q&A 번호
	private String 		m_id;			// 고객 ID
	private String 		q_title; 		// Q&A 제목
	private String 		q_content; 		// 질의 내용
	private String 		q_reply; 		// 답변 내용
	private int 		q_state; 		// 답변 상태(0:미응답, 1:응답완료)
	private Timestamp 	q_indate; 		// Q&A 등록 날짜
}
