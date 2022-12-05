package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {
	// writer : Seyoung
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "gly?command=index";

		// 기존의 세션 객체가 존재하면 반환, 없을시 null 반환
		HttpSession session = request.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
