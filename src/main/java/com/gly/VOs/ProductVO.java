package com.gly.VOs;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
  private int 		id;			// 상품 번호
  private String 	name;		// 상품 이름
  private String 	content;	// 상품 설명
  private int 		kind;		// 상품 분류(0:여성, 1:남성, 2:잡화)
  private Timestamp indate;		// 상품 등록일
  private int 		price;		// 상품 가격
}
