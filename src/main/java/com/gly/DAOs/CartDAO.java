package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class CartDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public CartDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


	public ArrayList<CartVO> listCart() {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		
		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select * from show_bag";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			while (rset.next()) {
				CartVO cart = new CartVO();
				cart.setImg_src(rset.getString(1));
				cart.setP_name(rset.getString(2));
				cart.setP_color(rset.getString(3));
				cart.setP_size(rset.getInt(4));
				cart.setC_quantity(rset.getInt(5));
				cart.setP_price(rset.getInt(6));
				cartList.add(cart);
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartList;
	}
	
 }
