package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="login/login.jsp";
//	    HttpSession session=request.getSession();
//	  
//	    String id=request.getParameter("id");
//	    String pwd=request.getParameter("pwd");
//	    
//	    MemberDAO memberDAO=MemberDAO.getInstance();
//	    MemberVO memberVO=memberDAO.getMember(id);
//	    
//	    if(memberVO!=null){
//	      if(memberVO.getPwd().equals(pwd)){    
//	        url="gly?command=index";
//	      } else {
//		    	//alert
//		    }
//	    } else {
//	    	//alert
//	    }
	    
	    request.getRequestDispatcher(url).forward(request, response);

	}

}
