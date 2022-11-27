package com.gly.DAOs;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.ImageVO;
import com.gly.VOs.OptionVO;
import com.gly.VOs.ProductVO;

import oracle.jdbc.OracleTypes;


public class OptionDAO {
	private Connection con;
	private PreparedStatement pstmt;
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
	
	
	// writer : Hanul
	public ArrayList<OptionVO> getProductOptions(int p_id) {
		ArrayList<OptionVO>	options = new ArrayList<OptionVO>();
		// 상품 옵션 정보
		String query = "{ call prod.get_all_options(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, p_id);			// p_kind 
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			// p_color, p_size, p_d_id
			while (rset.next()) {
				OptionVO option = new OptionVO();
				option.setP_color(rset.getString("p_color"));
				option.setP_szie(rset.getInt("p_size"));
				option.setP_d_id(rset.getInt("p_d_id"));
				options.add(option);
			}
			System.out.println();
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return options;
	}
}
