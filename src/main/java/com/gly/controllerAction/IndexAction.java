package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ImageVO;

public class IndexAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "main/main.jsp";
		response.setContentType("text/html;charset=utf-8");
		ProductDAO dao = new ProductDAO();
		ArrayList<ImageVO> newProductList = dao.listNewProduct();	
		request.setAttribute("newProductList", newProductList);
		dao.listNewProduct();
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
