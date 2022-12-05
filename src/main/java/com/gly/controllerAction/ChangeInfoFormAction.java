package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class ChangeInfoFormAction implements Action{
	// writer : Hansol
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd");
		String e = request.getParameter("email");
		String emailDomain = request.getParameter("email_domain");
		String email = e + "@" + emailDomain;
		
		String url = "mypage/checkChangeInfo.jsp";
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			MemberDAO dao = MemberDAO.getInstance();
			dao.changeInfo(loginUser.getM_id(), pwd, email);
		}else url = "gly?command=login_form";
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
