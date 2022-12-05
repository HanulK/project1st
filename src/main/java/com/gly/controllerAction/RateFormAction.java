package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateFormAction  implements Action{
	// writer : Hansol
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="";
		
		HttpSession session = request.getSession();
		
		int product_id = Integer.parseInt(request.getParameter("p_id"));
		String p_id = request.getParameter("p_id");
		if (session.getAttribute("userInfo") != null) {
			
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			int check = dao.checkProduct(product_id,loginUser.getM_id());
			if(check==1) url ="mypage/checkReview.jsp";
			else url="gly?command=write_review&p_id=" + p_id ;
			
		}else url = "gly?command=login_form";
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
