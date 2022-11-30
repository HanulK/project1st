package com.gly.DAOs;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.ImageVO;

import oracle.jdbc.OracleTypes;


public class ImageDAO {
	private Connection con;
	private DataSource dataFactory;
	
	private static ImageDAO instance = new ImageDAO();
	public static ImageDAO getInstance() { return instance; }
	
	private ImageDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	// writer : hanul - 
	public ArrayList<ImageVO> getDetailImagVO(int p_id) {
		ArrayList<ImageVO> imgSrcs = new ArrayList<ImageVO>();
		// 상품 상세 이미지 
		String query = "{ call prod.get_detail_img_src(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, p_id);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			while (rset.next()) {
				ImageVO img_src = new ImageVO();
				img_src.setImgSrc(rset.getString("img_src"));
				imgSrcs.add(img_src);
			}
			System.out.println();
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return imgSrcs;
	}
	
	// writer : hanul - 
	public String getSubImageSrc(int p_id) {
		String imgSrc = null;
		String query = "{ ? = call get_small_imgsrc(?) }";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.registerOutParameter(1, Types.VARCHAR);
			callableStatement.setInt(2, p_id);
			callableStatement.executeUpdate();
			imgSrc = callableStatement.getString(1);
			
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return imgSrc;
	}
}
