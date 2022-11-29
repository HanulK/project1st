package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.VOs.*;

public class JoinSuccessAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MemberVO userInfo = (MemberVO) session.getAttribute("userInfo");
		String username = userInfo.getM_id();

	}

}
