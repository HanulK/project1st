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
			//1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext
			Context initContext = new InitialContext();
			//2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource) initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void JdbcTest() {
		try {
			//3. lookup 메소드로 얻어낸 DataSource 객체로 getConnection()메소드를 호출하여 커넥션 객체를 얻어냄
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "SELECT employee_id, first_name FROM employees ";
//			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			
			while (rset.next()) {
				System.out.print(rset.getInt(1) + " ");
				System.out.println(rset.getString(2));
			}
			
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
