package com.gly.VOs;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductDetailVO {
  private int 		p_d_id;			// 제품 상세 번호
  private int 		p_id;			// 제품 번호
  private String	color;			// 제품 색상
  private int		szie;			// 제품 사이즈 (0:free, 44, 55, 66, 225, 230)
}
