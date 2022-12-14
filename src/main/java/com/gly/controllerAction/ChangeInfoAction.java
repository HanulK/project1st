package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.VOs.*;

public class ChangeInfoAction implements Action{
	// writer : Hansol
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/changeInfo.jsp";
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			request.setAttribute("birth", loginUser.getM_birth());
		}else url = "gly?command=login_form";
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
