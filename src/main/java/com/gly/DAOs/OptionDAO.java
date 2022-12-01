package com.gly.DAOs;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.OptionVO;

import oracle.jdbc.OracleTypes;


public class OptionDAO {
	private Connection con;
	private DataSource dataFactory;
	
	private static OptionDAO instance = new OptionDAO();
	public static OptionDAO getInstance() { return instance; }
	
	private OptionDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	
	// writer : hanul - 
	public ArrayList<ArrayList<OptionVO>> getProductOptions(int p_id) {
		ArrayList<ArrayList<OptionVO>> options = new ArrayList<ArrayList<OptionVO>>();
		// 상품 옵션 정보
		String query = "{ call prod.get_all_options(?, ?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, p_id); 
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.registerOutParameter(3, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);
			ArrayList<OptionVO> colorOption = new ArrayList<OptionVO>();
			
			while (rset.next()) {
				OptionVO option = new OptionVO();
				option.setP_color(rset.getString("p_color"));
				colorOption.add(option);
			}
			
			rset = (ResultSet) callableStatement.getObject(3);
			ArrayList<OptionVO> sizeOption = new ArrayList<OptionVO>();
			while (rset.next()) {
				OptionVO option = new OptionVO();
				option.setP_szie(rset.getInt("p_size"));
				sizeOption.add(option);
			}
			
			options.add(colorOption);
			options.add(sizeOption);
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return options;
	}
}
