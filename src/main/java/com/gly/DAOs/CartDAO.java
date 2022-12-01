package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import com.gly.VOs.*;

import oracle.jdbc.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class CartDAO {
	private Connection con;
	private DataSource dataFactory;
	private static CartDAO cDAO = new CartDAO();
	
	public static CartDAO getInstance() {//인스턴트 리턴 메서드 생성
		return cDAO;
	}
	public CartDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

    // writer : juhye - 카트테이블에 있는 값 리스트로 가져오기
	public ArrayList<CartVO> listCart(String v_id) {
		ArrayList<CartVO> cartList = new ArrayList<CartVO>();
		String query = "{call get_cart_user(?,?)}";
		
		try {
			con = dataFactory.getConnection();
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
				cart.setP_id(rset.getInt(7));
				cart.setP_d_id(rset.getInt(8));
				cartList.add(cart);
			}
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cartList;
	}
	
	// writer : juhye - 
	public int getpdid(int v_p_size, String v_p_color, int v_p_id) {
		String query = "{ ? = call check_p_d_id(?,?,?)}";
		int p_d_id = 0;
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			
			callableStatement.registerOutParameter(1, OracleType.NUMBER);
			callableStatement.setInt(2, v_p_size);
			callableStatement.setString(3, v_p_color);
			callableStatement.setInt(4, v_p_id);
			callableStatement.executeUpdate();
			p_d_id = callableStatement.getInt(1);
			

			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return p_d_id;	
	}
	
	// writer : juhye - 
	public void insertcart(int in_quantity, String in_m_id, int in_p_d_id) {
		String query = "{call insertcart(?,?,?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, in_quantity);
			callableStatement.setString(2,in_m_id);
			callableStatement.setInt(3,in_p_d_id);
			callableStatement.execute();
			con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	
	// writer : juhye - 
	public void deletecart(String del_m_id, int del_p_d_id) {
		String query = "{call deletecart(?,?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1,del_m_id);
			callableStatement.setInt(2,del_p_d_id);
			callableStatement.execute();
			con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	
	// writer : hanul - 각 회원의 카트에 담긴 수량 가져오기
	public ArrayList<Integer> getQuantityOfCartForEach(String m_id) {
		ArrayList<Integer> quantitys = new ArrayList<Integer>();
		String query = "{ call get_quantity_of_cart_for_each(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, m_id);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			while (rset.next()) {
				quantitys.add(rset.getInt("c_quantity"));
			}
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return quantitys;
	}
	public void update_qty(int v_p_d_id, String v_m_id, int v_qty) {
		String query = "{call update_qty(?,?,?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, v_p_d_id);
			callableStatement.setString(2,v_m_id);
			callableStatement.setInt(3,v_qty);
			callableStatement.execute();
			con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
	
	public int cart_total_size(String v_m_id) {
		int cart_size = 0;
		String query = "{? = call find_cart_size(?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.registerOutParameter(1, OracleType.NUMBER);
			callableStatement.setString(2, v_m_id);

			callableStatement.execute();
			
			cart_size = callableStatement.getInt(1);
			con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}

		
		
		return cart_size;
		
	}
	
 }
