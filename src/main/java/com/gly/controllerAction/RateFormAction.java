package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateFormAction  implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="";
		
		HttpSession session = request.getSession();
		
		int product_id = Integer.parseInt(request.getParameter("p_id"));
		System.out.println("product_id= "+ product_id);
		if (session.getAttribute("userInfo") != null) {
			
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			int check = dao.checkProduct(product_id,loginUser.getM_id());
			System.out.println(check);
			if(check==1) url ="mypage/checkReview.jsp";
			else url="mypage/rateForm.jsp";
		}
		request.getRequestDispatcher(url).forward(request, response);  
	}
}
