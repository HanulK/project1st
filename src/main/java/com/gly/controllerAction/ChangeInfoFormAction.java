package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class ChangeInfoFormAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pwd = request.getParameter("pwd");
		String e = request.getParameter("email");
		String emailDomain = request.getParameter("email_domain");
		String email = e + "@" + emailDomain;
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String birth = year+month+day;
		
		System.out.println("성공");
		String url = "mypage/checkChangeInfo.jsp";
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			MemberDAO dao = MemberDAO.getInstance();
			dao.changeInfo(loginUser.getM_id(), pwd, email, birth);
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}

}
