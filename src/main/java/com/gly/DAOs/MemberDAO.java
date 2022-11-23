package com.gly.DAOs;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class MemberDAO {
	private MemberDAO() {};
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() { return instance; } 
}
