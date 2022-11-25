package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ImageVO {
	private String 		imgSrc;		// 상품 이미지 링크
	private int 		id; 			// 상품 번호
	private String		name;			// 상품 이름
	private int			price;		// 상품 가격
	
}
