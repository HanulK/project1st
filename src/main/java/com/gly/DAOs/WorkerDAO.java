package com.gly.DAOs;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import javax.naming.Context;
//import javax.naming.InitialContext;
//import javax.sql.DataSource;

public class WorkerDAO {
	private WorkerDAO() {};
	private static WorkerDAO instance = new WorkerDAO();
	public static WorkerDAO getInstance() { return instance; }
	
	// variables : w_id(관리자 ID), w_pw(관리자 PW), w_name(관리자 이름)
}
