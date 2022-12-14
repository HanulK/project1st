package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

import oracle.jdbc.*;

public class ReviewDAO {
	private Connection con;
	private DataSource dataFactory;

	private static ReviewDAO instance = new ReviewDAO();

	public static ReviewDAO getInstance() {
		return instance;
	}

	private ReviewDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};

	// writer : hansol
	public ArrayList<ReviewVO> listReview(String id) {
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		String query = "{ call rate(?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(query);
			cstmt.setString(1, id);
			cstmt.registerOutParameter(2, OracleTypes.CURSOR);
			cstmt.execute();

			ResultSet rset = (ResultSet) cstmt.getObject(2);
			while (rset.next()) {
				ReviewVO review = new ReviewVO();
				review.setR_indate(rset.getDate(1));
				review.setR_title(rset.getString(2));
				review.setR_text(rset.getString(3));
				review.setP_id(rset.getInt(4));
				review.setP_name(rset.getString(5));
				review.setP_src(rset.getString(6));
				reviewList.add(review);
			}
			rset.close();
			cstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewList;
	}

	// writer : hansol
	public void writeReview(int score, String text, int p_id, String user, String title) {
		String sql = "{call write_review(?,?,?,?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setInt(1, score);
			cstmt.setString(2, text);
			cstmt.setInt(3, p_id);
			cstmt.setString(4, user);
			cstmt.setString(5, title);
			cstmt.execute();
			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// writer : hansol
	public int checkProduct(int product_id, String user) {
		int result = -1;
		String sql = "{ ? =call checkProduct(?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.registerOutParameter(1, OracleType.NUMBER);
			cstmt.setInt(2, product_id);
			cstmt.setString(3, user);
			cstmt.execute();
			result = cstmt.getInt(1);
			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// writer : seyoung
	public void deleteReview(int pid, String mid) {
		String sql = " { call RATE_MOD.deleteReview(?, ?) } ";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setInt(1, pid);
			cstmt.setString(2, mid);
			cstmt.execute();

			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// writer : seyoung
	public ArrayList<ReviewVO> rateFilter(String id, int rateScore) {
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		String query = "{ ? = call RATE_MOD.rateFilter(?,?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(query);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			cstmt.setString(2, id);
			cstmt.setInt(3, rateScore);
			cstmt.execute();

			ResultSet rset = (ResultSet) cstmt.getObject(1);
			while (rset.next()) {
				ReviewVO review = new ReviewVO();
				review.setR_score(rset.getInt(1));
				review.setR_text(rset.getString(2));
				review.setR_indate(rset.getDate(3));
				review.setP_id(rset.getInt(4));
				review.setM_id(rset.getString(5));
				review.setR_title(rset.getString(6));
				review.setP_src(rset.getString(7));
				review.setP_name(rset.getString(8));
				reviewList.add(review);
			}
			rset.close();
			cstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewList;
	}

	// writer : Seyoung
	public ArrayList<ReviewVO> productReviewList(int pid) {
		ArrayList<ReviewVO> reviewList = new ArrayList<ReviewVO>();
		String query = "{ ? = call RATE_MOD.productReviewList(?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(query);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			cstmt.setInt(2, pid);
			cstmt.execute();

			ResultSet rset = (ResultSet) cstmt.getObject(1);
			while (rset.next()) {
				ReviewVO review = new ReviewVO();
				review.setR_score(rset.getInt(1));
				review.setR_text(rset.getString(2));
				review.setR_indate(rset.getDate(3));
				review.setP_id(rset.getInt(4));
				review.setM_id(rset.getString(5).replaceAll("(?<=.{3}).", "*"));
				review.setR_title(rset.getString(6));
				reviewList.add(review);
			}
			rset.close();
			cstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewList;
	}

}
