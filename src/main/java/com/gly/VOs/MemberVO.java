package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
  private String m_id;
  private String m_pw;
  private String m_name;
  private String m_birth;
  private int m_gender;
  private String m_email;
  private String m_address;
  private String m_phone;
  private Timestamp m_indate;
}
