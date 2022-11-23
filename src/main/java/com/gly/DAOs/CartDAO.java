package com.gly.DAOs;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class CartDAO {
	private CartDAO() {};
	private static CartDAO instance = new CartDAO();
	public static CartDAO getInstance() { return instance; }
	
}
