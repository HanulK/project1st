package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TestDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public TestDAO() {
		try {
			// 1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext
			Context initContext = new InitialContext();
			// 2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource)
			// initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void JdbcTest() {
		try {
			// 3. lookup 메소드로 얻어낸 DataSource 객체로 getConnection()메소드를 호출하여 커넥션 객체를 얻어냄
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "SELECT id,name FROM member ";
//			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();

			while (rset.next()) {
				System.out.print(rset.getString(1) + " ");
				System.out.println(rset.getString(2));
			}

			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void listNewProduct() {

		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select img_src from (select * from images, product order by p_indate desc)"
					 + "where rownum<=4 ";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			while (rset.next()) {
				System.out.println(rset.getString(1));
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void listBestProduct() {

		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select img_src, p_name, p_price from main_img_list m, product p"
					 + " where m.p_id=p.p_id and rownum<=4"
					+" order by p_indate desc ";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			while (rset.next()) {
				System.out.println(rset.getString(1));
				System.out.println(rset.getString(2));
				System.out.println(rset.getInt(3));
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
