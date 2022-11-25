package com.gly.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.ImageVO;
import com.gly.VOs.ProductVO;


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
	
	
	public ArrayList<ProductVO> getSearchProducts() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String query = "call prod_insert_t1(?, ?, ?)";
		
		try {
			con = dataFactory.getConnection();
//			System.out.println("Connection success");
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			
			
			
//			String query = "SELECT employee_id, first_name FROM employees ";
////			System.out.println("prepareStatememt: " + query);
//			pstmt = con.prepareStatement(query);
//			ResultSet rset = pstmt.executeQuery();
//			
//			while (rset.next()) {
//				System.out.print(rset.getInt(1) + " ");
//				System.out.println(rset.getString(2));
//			}
//			
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return productList;
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
