package com.gly.DAOs;

import java.sql.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

import oracle.jdbc.*;

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
			System.out.println("Connection success");
			String query = " { ? = call MEM.get_userInfo(?) }";
			CallableStatement cstmt = con.prepareCall(query);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			cstmt.setString(2, id);
			cstmt.execute();

			ResultSet rs = (ResultSet) cstmt.getObject(1);

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
		int result = 0;
		String sql = "insert into member(id, pw, name, birth, gender, address, email, phone, indate) ";
		sql += "values(?, ?, ?, ?, ?, ?, ?, ?, sysdate) ";
		System.out.println("sql: " + sql);

		try {
			con = dataFactory.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, memberVO.getM_id());
			pstmt.setString(2, memberVO.getM_pw());
			pstmt.setString(3, memberVO.getM_name());
			pstmt.setString(4, memberVO.getM_birth());
			pstmt.setInt(5, memberVO.getM_gender());
			pstmt.setString(6, memberVO.getM_address());
			pstmt.setString(7, memberVO.getM_email());
			pstmt.setString(8, memberVO.getM_phone());

			result = pstmt.executeUpdate();

			System.out.println("가입 성공");
			pstmt.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
