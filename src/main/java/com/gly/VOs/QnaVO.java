package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QnaVO {
  private int    	qna_id; 		// Q&A 번호
  private String 	id;				// 고객 ID
  private String 	title;			// Q&A 제목
  private String 	content;		// 질의 내용
  private String 	reply;			// 답변 내용
  private int 		state; 			// 답변 상태(0:미응답, 1:응답완료)
  private Timestamp date;			// Q&A 등록 날짜
}
