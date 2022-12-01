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

		// 세션 생성
		HttpSession session = request.getSession();

		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_pw");

		// 멤버 info 확인 및 로그인
		MemberDAO memberDAO = MemberDAO.getInstance();

<<<<<<< Updated upstream
		if (memberVO != null) { // DB에 멤버 정보가 있을 시
			if (memberVO.getM_pw().equals(pw)) { // id O, 비밀번호 O
				session.removeAttribute("id");
				session.setAttribute("userInfo", memberVO);
				url = "gly?command=index";
				System.out.println("로그인 성공");
			} else { // id O, 비밀번호 X
				System.out.println("로그인 실패(비번다름)");
=======
		//
		if (memberDAO.if_id_exist(id) == 0) {
			MemberVO memberVO = memberDAO.getMemberInfo(id);
>>>>>>> Stashed changes

			if (memberVO != null) { // DB에 멤버 정보가 있을 시
				if (memberVO.getM_pw().equals(pw)) { // id O, 비밀번호 O
					session.removeAttribute("id");
					session.setAttribute("userInfo", memberVO);

					url = "gly?command=index";
					System.out.println("로그인 성공");
				} else { // id O, 비밀번호 X
					System.out.println("로그인 실패(비번다름)");

				}
			} else { // id X, 비밀번호 X, login fail
				System.out.println("로그인 실패(존재X)");
			}

		} else {
			System.out.println("탈퇴한 회원입니다.");
			response.setContentType("text/html; charset=utf-8");
			PrintWriter w = response.getWriter();
			w.write("<script>alert('탈퇴한 회원입니다.');</script>");
			w.flush();
			w.close();
		}
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
		request.getRequestDispatcher(url).forward(request, response);

	}
}
