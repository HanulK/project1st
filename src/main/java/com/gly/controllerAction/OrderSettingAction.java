package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.CartDAO;
import com.gly.DAOs.ImageDAO;
import com.gly.DAOs.ProductDAO;
import com.gly.VOs.MemberVO;
import com.gly.VOs.ProductVO;

public class OrderSettingAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "product/itemInfo.jsp";

		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			url = "product/order.jsp";
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ArrayList<ProductVO> products = new ArrayList<ProductVO>();
			ArrayList<Integer> quantitys = new ArrayList<Integer>();
			int totalPrice = 0;

			if (request.getParameter("num").equals("1")) {
				// 단일 상품 결제
				if (request.getParameter("color") != null && request.getParameter("size") != null) {
					ProductVO prod = new ProductVO();
					int p_id = Integer.parseInt(request.getParameter("productCode"));
					prod.setP_id(p_id);
					prod.setP_name(request.getParameter("productName"));
					prod.setP_price(Integer.parseInt(request.getParameter("productPrice")));
					int size;
					if (request.getParameter("size").equals("FR")) {
						size = 0;
					} else {
						size = Integer.parseInt(request.getParameter("size"));
					}
					prod.setP_size(size);
					prod.setP_color(request.getParameter("color"));

					ImageDAO imageDAO = ImageDAO.getInstance();
					prod.setP_img_src(imageDAO.getSubImageSrc(p_id));
					
					products.add(prod);
					quantitys.add(Integer.parseInt(request.getParameter("quantity")));
					totalPrice = prod.getP_price()*quantitys.get(0);
					
					request.setAttribute("orderCase", "single");
				} else {
					url = "product/order_fail.jsp";
				}
			} else {
				// 여러 상품 결제
				ProductDAO productDAO = ProductDAO.getInstance();
				products = productDAO.getCartForEach(loginUser.getM_id());
				
				CartDAO cartDAO = CartDAO.getInstance();
				quantitys = cartDAO.getQuantityOfCartForEach(loginUser.getM_id());
				
				for(int i=0; i<products.size(); i++) {
					totalPrice += (products.get(i).getP_price()*quantitys.get(i));
				}
				request.setAttribute("orderCase", "multi");
			}
			
			request.setAttribute("member", loginUser);
			request.setAttribute("products", products);
			request.setAttribute("quantitys", quantitys);
			request.setAttribute("totalPrice", totalPrice);

		} else {
			url = "login/not_login_state.jsp";
		}

		request.getRequestDispatcher(url).forward(request, response);

	}

}
