package com.gly.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gly.controllerAction.Action;
//import com.gly.controllerAction.*;

@WebServlet("/gly")
public class gly extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		    String command = req.getParameter("command");
		    System.out.println("gly(Servlet)에서 요청을 받음을 확인 : " + command);
		    
		    ActionFactory af = ActionFactory.getInstance();
		    Action action = af.getAction(command);

		    if (action != null) {
		      action.execute(req, resp);
		    }
		  }

		  protected void doPost(HttpServletRequest request,
		      HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("UTF-8");
		    doGet(request, response);
		  }
}