package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/shoppingbag.jsp";
		
		   String size = request.getParameter("size");
		   String color = request.getParameter("color");
		   int txtqty = Integer.parseInt(request.getParameter("txtqty"));
		   System.out.println(size);
		   System.out.println(color);
		   System.out.println(txtqty);
		
		
		
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
