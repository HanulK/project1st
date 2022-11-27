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
		String query = "{ call prod.search_with_main_imgsrc(?, ?)}";
		
		try {
			con = dataFactory.getConnection();
			CallableStatement callableStatement = con.prepareCall(query);
			callableStatement.setString(1, word);
			callableStatement.registerOutParameter(2, OracleTypes.CURSOR);
			callableStatement.execute();

			ResultSet rset = (ResultSet) callableStatement.getObject(2);

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
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
	}
	
	// writer : Hanul
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

			//p.p_id, p.p_name, p.p_price, i.img_src
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
	
	// writer : Hanul
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
	
	public ArrayList<ImageVO> listNewProduct() {
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();

		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select img_src, p_name, p_price from main_img_list m, product p"
					 + " where m.p_id=p.p_id and rownum<=3"
					+" order by p_indate desc ";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
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
	
	public ArrayList<ImageVO> listBestProduct() {
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();
		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select * from best_img where rownum <= 3 order by p_name ";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
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
