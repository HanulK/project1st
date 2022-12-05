package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.CartDAO;
import com.gly.VOs.CartVO;
import com.gly.VOs.MemberVO;

public class CartInsertAction implements Action {
	// writer : Juhye
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/gly?command=cart_list";


	
		CartDAO cDAO = CartDAO.getInstance();
		
		// dao객체 인스턴스 가져오기
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
					MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
		

					CartDAO dao = new CartDAO();
					ArrayList<CartVO> cartList = dao.listCart(loginUser.getM_id());
				
					String color = request.getParameter("color");
					int quantity = Integer.parseInt(request.getParameter("quantity"));
					int p_id = Integer.parseInt(request.getParameter("productCode"));
					MemberVO  userInfo = (MemberVO) session.getAttribute("userInfo");
					String username = userInfo.getM_id();
					int size;
					if (request.getParameter("color") != null && request.getParameter("size") != null) {
						if(request.getParameter("size").equals("FR")) {
								size = 0;
							} else {
								size = Integer.parseInt(request.getParameter("size"));
							}
							int pdid = cDAO.getpdid(size, color, p_id);
							cDAO.update_qty(pdid, username, quantity);
							int cart_size = (int) session.getAttribute("total_cart");
							session.setAttribute("total_cart", cart_size+1);
					}else{
						url = "product/order_fail1.jsp";		
					}
				

		}else { 
			url="gly?command=login_form";
		}
		request.getRequestDispatcher(url).forward(request, response);  

	}
	
	
}
