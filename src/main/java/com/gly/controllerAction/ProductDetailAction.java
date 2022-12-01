package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ImageDAO;
import com.gly.DAOs.OptionDAO;
import com.gly.DAOs.ProductDAO;
import com.gly.DAOs.ReviewDAO;
import com.gly.VOs.ImageVO;
import com.gly.VOs.OptionVO;
import com.gly.VOs.ProductVO;
import com.gly.VOs.ReviewVO;

public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "product/itemInfo.jsp";

		int p_id = Integer.parseInt(request.getParameter("pid").trim());

		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProductVO(p_id);
		productVO.setP_id(p_id);

		OptionDAO optionDAO = OptionDAO.getInstance();
		ArrayList<ArrayList<OptionVO>> optionVOs = optionDAO.getProductOptions(p_id);

		ArrayList<String> colorSet = new ArrayList<String>();
		for (int i = 0; i < optionVOs.get(0).size(); i++)
			colorSet.add(optionVOs.get(0).get(i).getP_color());

		ArrayList<Integer> sizeSet = new ArrayList<Integer>();
		for (int i = 0; i < optionVOs.get(1).size(); i++)
			sizeSet.add(optionVOs.get(1).get(i).getP_size());

		ImageDAO imageDAO = ImageDAO.getInstance();
		ArrayList<ImageVO> imgSrcs = imageDAO.getDetailImagVO(p_id);

		request.setAttribute("product", productVO);
		request.setAttribute("ops", optionVOs);
		request.setAttribute("colors", colorSet);
		if (sizeSet.size() == 1 && sizeSet.get(0) == 0) {
			request.setAttribute("sizes", "FR");
		} else {
			request.setAttribute("sizes", sizeSet);
		}
		request.setAttribute("img_srcs", imgSrcs);

		// 리뷰 불러오기
		ReviewDAO dao = ReviewDAO.getInstance();
		ArrayList<ReviewVO> reviewList = dao.productReviewList(p_id);
		request.setAttribute("reviewList", reviewList);
		
		request.getRequestDispatcher(url).forward(request, response);
	}

}
