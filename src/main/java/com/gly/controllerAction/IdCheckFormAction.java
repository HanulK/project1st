package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.*;

public class IdCheckFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/login/idcheck.jsp";

		String id = request.getParameter("id").trim();

		MemberDAO memberDAO = MemberDAO.getInstance();
		int message = memberDAO.if_id_exist(id);

		request.setAttribute("message", message);
		request.setAttribute("id", id);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
