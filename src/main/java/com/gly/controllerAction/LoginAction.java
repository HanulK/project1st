package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class LoginAction implements Action {
	// writer : Seyoung
	public LoginAction() {
	}

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "login/login_fail.jsp";

		// 세션 생성
		HttpSession session = request.getSession();

		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");

		// 멤버 info 확인 및 로그인
		MemberDAO memberDAO = MemberDAO.getInstance();

		//
		if (memberDAO.is_member_out(id) == 0) {
			MemberVO memberVO = memberDAO.getMemberInfo(id);

			if (memberVO != null) { // DB에 멤버 정보가 있을 시
				// id O, 비밀번호 O : 로그인 성공
				if (memberVO.getM_pw().equals(pw)) {
					session.removeAttribute("id");
					session.setAttribute("userInfo", memberVO);

					url = "gly?command=index";
				} else {
					// id O, 비밀번호 X : 로그인 실패(비번다름)
				}
			} else { // id X, 비밀번호 X, login fail : 로그인 실패(존재X)
			}
		} else {
			// 탈퇴한 회원
		}

		request.getRequestDispatcher(url).forward(request, response);
	}
}
