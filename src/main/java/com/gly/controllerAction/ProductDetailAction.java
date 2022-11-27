package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.DAOs.ImageDAO;
import com.gly.DAOs.OptionDAO;
import com.gly.DAOs.ProductDAO;
import com.gly.VOs.ImageVO;
import com.gly.VOs.OptionVO;
import com.gly.VOs.ProductVO;


public class ProductDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="product/itemInfo.jsp";
		
		int p_id = Integer.parseInt(request.getParameter("pid").trim());
		
		ProductDAO productDAO = ProductDAO.getInstance();
		ProductVO productVO = productDAO.getProductVO(p_id);
		productVO.setP_id(p_id);
		
		OptionDAO optionDAO = OptionDAO.getInstance();
		ArrayList<OptionVO> optionVOs = optionDAO.getProductOptions(p_id);
		
		Set<String> color_set = new HashSet<String>();
		Set<Integer> size_set = new HashSet<Integer>();
		for(int i=0; i<optionVOs.size(); i++) {
			color_set.add(optionVOs.get(i).getP_color());
			size_set.add(optionVOs.get(i).getP_szie());
		}
		ArrayList<String> colorSet = new ArrayList<>(color_set);
		ArrayList<Integer> sizeSet = new ArrayList<>(size_set);
		Collections.sort(colorSet);
		Collections.sort(sizeSet);
		
		ImageDAO imageDAO = ImageDAO.getInstance();
		ArrayList<ImageVO> imgSrcs = imageDAO.getDetailImagVO(p_id);
		
		request.setAttribute("product", productVO);
		request.setAttribute("ops", optionVOs);
		request.setAttribute("colors", colorSet);
		if(sizeSet.size()==1 && sizeSet.get(0)==0) {
			request.setAttribute("sizes", "FR");
		} else {
			request.setAttribute("sizes", sizeSet);
		}
		request.setAttribute("img_srcs", imgSrcs);
		request.getRequestDispatcher(url).forward(request, response);  
	}

}
