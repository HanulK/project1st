package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class RateFormAction  implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/rateForm.jsp";
		System.out.println("여기로옴");
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
