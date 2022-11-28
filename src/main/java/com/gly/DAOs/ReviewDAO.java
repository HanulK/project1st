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

public class ReviewDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	private static ReviewDAO instance = new ReviewDAO();
	public static ReviewDAO getInstance() { return instance; }
	
	private ReviewDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	public ArrayList<ReviewVO> listReview(String id) {
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		String query = "{ call rate(?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(query);
			cstmt.setString(1,id);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.execute();
			
			ResultSet rset = (ResultSet) cstmt.getObject(2);
			while (rset.next()) {
				ReviewVO review = new ReviewVO();
				review.setR_indate(rset.getDate(1));
				review.setR_title(rset.getString(2));
				review.setR_text(rset.getString(3));
				review.setP_id(rset.getInt(4));
				reviewList.add(review);
			}
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewList;
	}
	
	public void writeReview(int score, String text, int p_id, String user,  String title) {
		String sql = "{call write_review(?,?,?,?,?)}";
		try {
			System.out.println("상품평 글쓰기");
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setInt(1,score);
			cstmt.setString(2,text);
			cstmt.setInt(3,p_id);
			cstmt.setString(4,user);
			cstmt.setString(5,title);
			cstmt.execute();
			cstmt.close();
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int checkProduct(int product_id, String user){
		int result = -1;
		String sql = "{call checkProduct(?,?,?)}";
		try {
			con=dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setInt(1 ,product_id);
			cstmt.setString(2,user);
			cstmt.registerOutParameter(3, OracleTypes.CURSOR);
			cstmt.execute();
			ResultSet rset = (ResultSet)cstmt.getObject(3);
			if(rset.next()) {
				result=1;
			}else {
				result=-1;
			}
			con.close();
			cstmt.close();
			rset.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
}
