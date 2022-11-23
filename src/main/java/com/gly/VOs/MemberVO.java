package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String 		m_id;			// 고객 ID
	private String 		m_pw;			// 고객 PW
	private String 		m_name;			// 고객 이름
	private String 		m_birth;		// 고객 생년월일
	private int 		m_gender;		// 고객 성별(1:남성, 2:여성)
	private String 		m_email;		// 고객 이메일
	private String 		m_address;		// 고객 주소
	private String		m_phone;		// 고객 전화번호
	private Timestamp 	m_indate;		// 고객 가입일자 
}
