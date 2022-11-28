package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class DeleteMember implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "gly?command=index";

		// 기존의 세션 객체가 존재하면 반환, 없을시 null 반환
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");

			System.out.println(">>"+loginUser.getM_id());
			MemberDAO memberDAO = MemberDAO.getInstance();
			memberDAO.deleteMember(loginUser.getM_id());
			
			session.invalidate();
		} else {
		}

		request.getRequestDispatcher(url).forward(request, response);

	}

}