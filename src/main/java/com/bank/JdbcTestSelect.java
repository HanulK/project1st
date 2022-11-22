package com.bank;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
<<<<<<< HEAD
=======
import javax.servlet.annotation.WebServlet;
>>>>>>> 8e0b715299a1d8eb76e437b2e0d762cb0c0693c9
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD
=======
@WebServlet("/testTestTest")
>>>>>>> 8e0b715299a1d8eb76e437b2e0d762cb0c0693c9
public class JdbcTestSelect extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response)  throws ServletException, IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();	
		TestDAO dao = new TestDAO();
		dao.JdbcTest();
		
	}
<<<<<<< HEAD
}
=======
}
>>>>>>> 8e0b715299a1d8eb76e437b2e0d762cb0c0693c9
