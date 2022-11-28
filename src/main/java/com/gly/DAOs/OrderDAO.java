package com.gly.DAOs;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.OrderVO;

import oracle.jdbc.internal.OracleTypes;

public class OrderDAO {
	private Connection con;
	private DataSource dataFactory;
	
	private static OrderDAO instance = new OrderDAO();

	public static OrderDAO getInstance() {return instance;}
	private OrderDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};

	public ArrayList<OrderVO> orderList(String id) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql = "{call order_list(?,?)}";
		System.out.println(sql);
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setString(1,id);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.execute();
			ResultSet rset = (ResultSet) cstmt.getObject(2);

			while (rset.next()) {
				OrderVO order = new OrderVO();
				order.setO_id(rset.getInt(1));
				order.setP_name(rset.getString(2));
				order.setO_quantity(rset.getInt(3));
				order.setP_price(rset.getInt(4));
				order.setO_state(rset.getInt(5));
				orderList.add(order);
				System.out.println("성공");
			}
			cstmt.close();
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	public ArrayList<OrderVO> recentOrderList(String id) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		String sql ="{call recent_order(?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setString(1, id);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.execute();
			ResultSet rset = (ResultSet)cstmt.getObject(2);
			while (rset.next()) {
				OrderVO order = new OrderVO();
				order.setO_id(rset.getInt(1));
				order.setP_name(rset.getString(2));
				order.setO_quantity(rset.getInt(3));
				order.setP_price(rset.getInt(4));
				order.setO_state(rset.getInt(5));
				order.setP_id(rset.getInt(6));
				orderList.add(order);
			}
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	public void insertOrder(String m_id, String receiver, String phone, String address, int payWay, int state) {
		String query = "{ call ord.add_order(?, ?, ?, ?, ?, ?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, address);
			callableStatement.setInt(2, payWay);
			callableStatement.setInt(3, state);
			callableStatement.setString(4, phone);
			callableStatement.setString(5, receiver);
			callableStatement.setString(6, m_id);
			callableStatement.execute();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertOrder(String m_id, String receiver, String phone, String address, int payWay, int state,
			String productName, String productColor, int productSize, int quantity) {
		String query = "{ call ord.add_order(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, address);
			callableStatement.setInt(2, payWay);
			callableStatement.setInt(3, state);
			callableStatement.setString(4, phone);
			callableStatement.setString(5, receiver);
			callableStatement.setString(6, m_id);
			
			callableStatement.setInt(7, quantity);
			callableStatement.setString(8, productName);
			callableStatement.setString(9, productColor);
			callableStatement.setInt(10, productSize);
			
			callableStatement.execute();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}