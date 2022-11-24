package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.MemberDAO;
import com.gly.VOs.MemberVO;

public class LoginAction implements Action {

	public LoginAction() {
	}

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "login/login_fail.jsp";
		HttpSession session = request.getSession();

		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");

		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = memberDAO.getMemberInfo(id);

		if (memberVO != null) { // 저장된 정보가 있을 시
			if (memberVO.getM_pw().equals(pw)) { // login success
				session.removeAttribute("id");
				session.setAttribute("loginUser", memberVO);
				url = "gly?command=index";
				System.out.println("로그인 성공");
			} else {
				// 비밀 번호가 틀려도
				System.out.println("로그인 실패(비번다름)");

			}
		} else {
			// 저장된 정보가 없을 시, login fail
			System.out.println("로그인 실패(존재X)");
		}

		request.getRequestDispatcher(url).forward(request, response);

	}

}
