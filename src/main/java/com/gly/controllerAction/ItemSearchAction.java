package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ProductVO;


public class ItemSearchAction implements Action {
	// writer : Hanul
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="product/searchlist.jsp";
		
		String words = request.getParameter("words");
		
		if (words.equals("")) {
			url="product/search_fail.jsp";
		}
		
		request.setAttribute("Title", words);
		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> productList = productDAO.getSearchProducts(words);
		
		
		request.setAttribute("count", productList.size());
		request.setAttribute("productList", productList);
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
