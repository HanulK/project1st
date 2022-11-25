package com.gly.DAOs;

import java.sql.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	private MemberDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};

	public static MemberDAO instance = new MemberDAO();

	public static MemberDAO getInstance() {
		return instance;
	}

	// 멤버 전체 정보 받기
	public MemberVO getMemberInfo(String id) {
		MemberVO memberVO = null;

		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");

			String query = "select * from member where id=? ";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				memberVO = new MemberVO();
				memberVO.setM_id(rs.getString(1));
				memberVO.setM_pw(rs.getString(2));
				memberVO.setM_name(rs.getString(3));
				memberVO.setM_birth(rs.getString(4));
				memberVO.setM_gender(rs.getInt(5));
				memberVO.setM_email(rs.getString(6));
				memberVO.setM_phone(rs.getString(7));
				memberVO.setM_address(rs.getString(8));
				memberVO.setM_indate(rs.getTimestamp(9));
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberVO;
	}
	
	
}
