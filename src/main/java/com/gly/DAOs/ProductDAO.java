package com.gly.DAOs;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class ProductDAO {
	private ProductDAO() {};
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() { return instance; }
}
