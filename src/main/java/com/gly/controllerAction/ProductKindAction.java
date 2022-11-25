package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ProductVO;

public class ProductKindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String url = "product/itemWList.jsp";
		 int kind = Integer.parseInt(request.getParameter("kind").trim());
		 
		 ProductDAO productDAO=ProductDAO.getInstance();
		 ArrayList<ProductVO> productKindList = productDAO.listKindProduct(kind);
		 
		 request.setAttribute("productKindList", productKindList);
		 request.getRequestDispatcher(url).forward(request, response);

	}

}
