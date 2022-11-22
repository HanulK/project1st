package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
  private String id;			// 고객 ID
  private String pw;			// 고객 PW
  private String name;			// 고객 이름
  private String birth;			// 고객 생년월일
  private int 	 gender;		// 고객 성별
  private String email;			// 고객 이메일
  private String address;		// 고객 주소
  private String phone;			// 고객 전화번호
  private Timestamp indate;		// 고객 가입일자 
}
