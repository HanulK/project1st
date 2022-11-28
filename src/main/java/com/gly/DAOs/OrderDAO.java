package com.gly.DAOs;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.OrderVO;

public class OrderDAO {
	private Connection con;
	private PreparedStatement pstmt;
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
		try {
			con = dataFactory.getConnection();
			String sql = "select o.o_id, p.p_name, d.o_quantity, p.p_price, o.o_state"
					+ " from \"order\" o, order_detail d, product p, product_detail pd"
					+ " where o.o_id=d.o_id and d.p_d_id =pd.p_d_id" + " and p.p_id =pd.p_id and  o.m_id=? ";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rset = pstmt.executeQuery();

			while (rset.next()) {
				OrderVO order = new OrderVO();
				order.setO_id(rset.getInt(1));
				order.setP_name(rset.getString(2));
				order.setO_quantity(rset.getInt(3));
				order.setO_state(rset.getInt(4));
				System.out.print(rset.getInt(1));
				System.out.print(rset.getString(2));
				System.out.print(rset.getInt(3));
				System.out.print(rset.getInt(4));
				orderList.add(order);
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	public ArrayList<OrderVO> recentOrderList(String id) {
		ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
		try {
			con = dataFactory.getConnection();
			String sql = "select o.o_id, p.p_name, d.o_quantity, p.p_price, o.o_state"
					+ " from \"order\" o, order_detail d, product p, product_detail pd"
					+ " where o.o_id=d.o_id and d.p_d_id =pd.p_d_id" + " and p.p_id =pd.p_id and  o.m_id=? and o_date>sysdate-30";
			System.out.println(sql);
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rset = pstmt.executeQuery();

			while (rset.next()) {
				OrderVO order = new OrderVO();
				order.setO_id(rset.getInt(1));
				order.setP_name(rset.getString(2));
				order.setO_quantity(rset.getInt(3));
				order.setO_state(rset.getInt(4));
				System.out.print(rset.getInt(1));
				System.out.print(rset.getString(2));
				System.out.print(rset.getInt(3));
				System.out.print(rset.getInt(4));
				orderList.add(order);
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderList;
	}
	
	public void insertOrder(String m_id, String receiver, String phone, String address, int payWay, int state) {
		String query = "{ call add_order(?, ?, ?, ?, ?, ?)}";
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
}