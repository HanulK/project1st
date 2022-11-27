package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ProductVO;

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="product/itemInfo.jsp";
		
		int p_id = Integer.parseInt(request.getParameter("pid").trim());
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProductVO(p_id);
		productVO.setP_id(p_id); //writer : juhye
		
		request.setAttribute("product", productVO);
		request.getRequestDispatcher(url).forward(request, response);  
	}

}
