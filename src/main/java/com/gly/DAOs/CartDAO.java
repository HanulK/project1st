package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

import oracle.jdbc.*;

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

//writer : juhye
	public ArrayList<CartVO> listCart(String v_id) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		String query = "{call get_cart_user(?,?)}";
		
		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, v_id);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();
			ResultSet rset = (ResultSet)callableStatement.getObject(2);
			
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
