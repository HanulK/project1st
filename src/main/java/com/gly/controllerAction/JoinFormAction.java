package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinFormAction implements Action {
	// writer : Seyoung
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="login/signUp.jsp";
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
