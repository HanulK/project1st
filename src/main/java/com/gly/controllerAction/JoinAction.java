package com.gly.controllerAction;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.MemberDAO;
import com.gly.VOs.MemberVO;

public class JoinAction implements Action {
	// writer : Seyoung
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "login/signupSuccess.jsp";

		HttpSession session = request.getSession();

		MemberVO memberVO = new MemberVO();
		memberVO = new MemberVO();
		memberVO.setM_id(request.getParameter("id"));
		memberVO.setM_pw(request.getParameter("pw"));
		memberVO.setM_name(request.getParameter("name"));
		String birth = request.getParameter("selYear") + request.getParameter("selMonth")
				+ request.getParameter("selDay");
		memberVO.setM_birth(birth);
		memberVO.setM_gender(Integer.parseInt(request.getParameter("gender")));
		memberVO.setM_email(request.getParameter("email"));
		String phone = request.getParameter("phone1") + request.getParameter("phone2") + request.getParameter("phone3");
		memberVO.setM_phone(phone);
		memberVO.setM_address(request.getParameter("address"));

		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.insertMember(memberVO);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
