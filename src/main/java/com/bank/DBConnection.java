package com.bank;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnection {
	
	private static Connection con;
	private DataSource dataFactory;

	public DBConnection() {
		try {
			//1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext  
			Context initContext = new InitialContext();
			//2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource) initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
			//3. lookup 메소드로 얻어낸 DataSource 객체로 getConnection()메소드를 호출하여 커넥션 객체를 얻어냄
			con = dataFactory.getConnection();
			System.out.println("Connection success");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	static {
//		try {
//			//1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext  
//			Context initContext=new InitialContext();
//			//2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource) initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
//			Context envContext=(Context)initContext.lookup("java:/comp/env");
//			DataSource ds=(DataSource)envContext.lookup("jdbc/myoracle");
//			//3. lookup 메소드로 얻어낸 DataSource 객체로 getConnection()메소드를 호출하여 커넥션 객체를 얻어냄
////			con = dataFactory.getConnection();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		/*		
		// 환경설정 파일을 읽어오기 위한 객체 생성
		Properties properties  = new Properties();
		Reader reader;
		try {
			reader = new FileReader("src\\main\\oracle.properties");  // 읽어올 파일 지정
			properties.load(reader); 
			// 설정 파일 로딩하기
		} catch (FileNotFoundException e1) {
			System.out.println("예외: 지정한 파일을 찾을수없습니다 : " + e1.getMessage());
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String driverName = properties.getProperty("driver");
		String url = properties.getProperty("url");
		String user = properties.getProperty("user");
		String pwd = properties.getProperty("password");

		try {
			Class.forName(driverName);
			conn = DriverManager.getConnection(url, user, pwd);
			System.out.println("Connection success");
		} catch (ClassNotFoundException e) {
			System.out.println("예외: 드라이버로드 실패 :" + e.getMessage());
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("예외: connection fail :" + e.getMessage());
			e.printStackTrace();
		}
		*/
//	}

	public static Connection getConnection() {
		return con;
	}
}