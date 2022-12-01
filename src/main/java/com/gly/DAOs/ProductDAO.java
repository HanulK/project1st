package com.gly.DAOs;

import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.sql.*;

import com.gly.VOs.*;

import oracle.jdbc.*;


public class ProductDAO {
	private Connection con;
	private DataSource dataFactory;
	
	private static ProductDAO instance = new ProductDAO();
	public static ProductDAO getInstance() { return instance; }
	
	private ProductDAO() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			dataFactory = (DataSource)envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	};
	
	// writer : hanul - 
	public ArrayList<ProductVO> getSearchProducts(String word) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "{ call prod.search_with_main_imgsrc(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, word);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			while (rset.next()) {
				ProductVO product = new ProductVO();
				product.setP_id(rset.getInt("p_id"));
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
				product.setP_img_src(rset.getString("img_src"));
				productList.add(product);
			}
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	// writer : hanul - 
	public ArrayList<ProductVO> listKindProduct (int kind) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "{ call prod.get_each_kind_with_main_imgsrc(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, kind);			// p_kind 
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			while (rset.next()) {
				ProductVO product = new ProductVO();
				product.setP_id(rset.getInt("p_id"));
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
				product.setP_img_src(rset.getString("img_src"));
				productList.add(product);
			}
			System.out.println();
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	// writer : hanul - 
	public ProductVO getProductVO(int p_id) {
		ProductVO product = new ProductVO();
		// 상품 main 정보
		String query = "{ call prod.get_detail(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, p_id);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			rset.next();
			//p.p_id, p.p_name, p_content, p_kind, p_indate, p.p_price
			product.setP_id(rset.getInt("p_id"));
			product.setP_name(rset.getString("p_name"));
			product.setP_kind(rset.getInt("p_kind"));
			product.setP_content(rset.getString("p_content"));
			product.setP_price(rset.getInt("p_price"));
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return product;
	}
	
	// writer : hansol - 
	public ArrayList<ImageVO> listNewProduct() {
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();
		String sql = "{call recent_product(?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			cstmt.execute();
			ResultSet rset = (ResultSet) cstmt.getObject(1);
			while (rset.next()) {
				ImageVO image = new ImageVO();
				image.setImgSrc(rset.getString(1));
				image.setName(rset.getString(2));
				image.setPrice(rset.getInt(3));
				image.setId(rset.getInt(4));
				imageList.add(image);
			}
			rset.close();
			con.close();
			}catch (Exception e) {
				e.printStackTrace();
		}
		return imageList;
	}
	
	// writer : hansol - 
	public ArrayList<ImageVO> listBestProduct() {
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();
		String sql = "{call best_product(?)}";
		try {
			con = dataFactory.getConnection();
			CallableStatement cstmt = con.prepareCall(sql);
			cstmt.registerOutParameter(1, OracleTypes.CURSOR);
			cstmt.execute();
			ResultSet rset = (ResultSet)cstmt.getObject(1);
			while (rset.next()) {
				ImageVO image = new ImageVO();
				image.setId(rset.getInt(1));
				image.setImgSrc(rset.getString(2));
				image.setName(rset.getString(3));
				image.setPrice(rset.getInt(4));
				imageList.add(image);
			}
			rset.close();
			con.close();
			cstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return imageList;
	}

	// writer : hanul - 
	public ArrayList<ProductVO> getCartForEach(String m_id) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "{ call get_cart_data_for_each(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, m_id);			// p_kind 
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

			//p.p_id, p.p_name, p.p_price, i.img_src
			while (rset.next()) {
				ProductVO product = new ProductVO();
				product.setP_id(rset.getInt("p_id"));
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
				product.setP_size(rset.getInt("p_size"));
				product.setP_color(rset.getString("p_color"));
				product.setP_img_src(rset.getString("img_src"));
				productList.add(product);
			}
			
			rset.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}


}
