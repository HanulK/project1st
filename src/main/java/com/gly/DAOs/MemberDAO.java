package com.gly.DAOs;

import java.sql.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

public class MemberDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	// 연결
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

	// 멤버 전체 정보 받기 (박세영)
	public MemberVO getMemberInfo(String id) {
		MemberVO memberVO = null;

		try {
			con = dataFactory.getConnection();
//			System.out.println("Connection success");

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

	public int insertMember(MemberVO memberVO) {
		int result = -1;
		String sql = "{ call MEM.sign_up(?, ?, ?, ?, ?, ?, ?, ?)}";
		System.out.println("sql: " + sql);

		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setString(1, memberVO.getM_id());
			cstmt.setString(2, memberVO.getM_pw());
			cstmt.setString(3, memberVO.getM_name());
			cstmt.setString(4, memberVO.getM_birth());
			cstmt.setInt(5, memberVO.getM_gender());
			cstmt.setString(6, memberVO.getM_address());
			cstmt.setString(7, memberVO.getM_email());
			cstmt.setString(8, memberVO.getM_phone());
			cstmt.execute();

			System.out.println("가입 성공");
			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public void deleteMember(String id) {
		String sql = " { call MEM.delete_member(?) } ";
		try {
			System.out.println(id);
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setString(1, id);

			cstmt.execute();
			System.out.println("탈퇴성공");
			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int if_id_exist(String id) {
		int result = -1;
		String sql = " { ? = call MEM.if_id_exist(?) } ";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.setString(2, id);
			cstmt.registerOutParameter(1, java.sql.Types.INTEGER);
			cstmt.execute();
			result = cstmt.getInt(1);
			cstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
