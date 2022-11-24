package com.gly.DAOs;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class OrderDAO {
	private OrderDAO() {};
	private static OrderDAO instance = new OrderDAO();
	public static OrderDAO getInstance() { return instance; }
}