package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OptionVO {
	private int 			p_d_id; 		// 상품 상세 번호
	private String 			p_color; 		// 제품 색상
	private int 			p_size; 		// 제품 사이즈 (0:free, 44, 55, 66, 225, 230)
	private String 			p_img_src;		// 상품 이미지 링크
}
