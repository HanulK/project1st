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
				reviewList.add(review);
			}
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reviewList;
	}
	
}
