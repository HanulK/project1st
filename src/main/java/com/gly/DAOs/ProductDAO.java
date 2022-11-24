package com.gly.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.ProductVO;

public class ProductDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() { return instance; }
	private ProductDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	
	public ArrayList<ProductVO> getSearchProducts() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "call prod_insert_t1(?, ?, ?)";
		
		try {
			con = dataFactory.getConnection();
//			System.out.println("Connection success");
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			
			
			
//			String query = "SELECT employee_id, first_name FROM employees ";
////			System.out.println("prepareStatememt: " + query);
//			pstmt = con.prepareStatement(query);
//			ResultSet rset = pstmt.executeQuery();
//			
//			while (rset.next()) {
//				System.out.print(rset.getInt(1) + " ");
//				System.out.println(rset.getString(2));
//			}
//			
//			rset.close();
//			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return productList;
	}
}
