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
import com.gly.VOs.ProductVO;

import oracle.jdbc.OracleTypes;


public class ProductDAO {
	private Connection con;
	private PreparedStatement pstmt;
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
	
	// writer : Hanul
	public ArrayList<ProductVO> getSearchProducts(String word) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "{ call search_product_with_imgsrc(?, ?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, word);
			callableStatement.setDouble(2, 1);		// get main image source
			callableStatement.registerOutParameter(3, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(3);

			//p.p_id, p.p_name, p.p_content, p.p_kind, p.p_price, i.img_src
			while (rset.next()) {
				ProductVO product = new ProductVO();
				product.setP_id(rset.getInt("p_id"));
				product.setP_name(rset.getString("p_name"));
				product.setP_price(rset.getInt("p_price"));
				product.setP_img_src(rset.getString("img_src"));
				productList.add(product);
			}
			rset.close();
//			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	// writer : Hanul
	public ArrayList<ProductVO> listKindProduct (int kind) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "{ call get_product_with_imgsrc(?, ?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setInt(1, kind);			// p_kind 
			callableStatement.setInt(2, 1);				// p_pos
			callableStatement.registerOutParameter(3, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(3);

			//p.p_id, p.p_name, p.p_price, i.img_src
			while (rset.next()) {
				ProductVO product = new ProductVO();
//				product.setP_id(rset.getInt(0));
				System.out.print(rset.getInt("p_id") + "   ");				// product ID
				System.out.print(rset.getString("p_name") + "   ");				// product Name
//				System.out.print(rset.getString(3) + "   ");				// product Content
				System.out.println(rset.getInt(4) + "   ");				// product Kind
				System.out.println(rset.getInt(5) + "   ");				// product Price
				System.out.println(rset.getString(6) + "   ");			// Product Main Img src
			}
			System.out.println();
			
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	// writer : Hanul
	public ProductVO getProductVO(int p_id) {
		ProductVO product = new ProductVO();
		return product;
	}
	
	//hansol
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
				imageList.add(image);
			}
			rset.close();
			pstmt.close();
			con.close();
			}catch (Exception e) {
				e.printStackTrace();
		}
		return imageList;
	}
	
	//hansol
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
				image.setImgSrc(rset.getString(1));
				image.setName(rset.getString(2));
				image.setPrice(rset.getInt(3));
				imageList.add(image);
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return imageList;
	}

}
