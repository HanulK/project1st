package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

import oracle.jdbc.internal.OracleTypes;

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
		String sql = "{call order_list(?,?)}";
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
}