package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ProductVO;


public class ItemSearchAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="product/searchlist.jsp";
		
		String words = request.getParameter("words");
		System.out.println("What's your search? : " + words);
		
		
		request.setAttribute("Title", words);
		ProductDAO productDAO = ProductDAO.getInstance();
		ArrayList<ProductVO> productList = productDAO.getSearchProducts();
		
		
//		request.setAttribute("count", count);
		request.setAttribute("productList", productList);
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
