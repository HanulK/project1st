package com.gly.DAOs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.gly.VOs.ImageVO;


public class ProductDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public ProductDAO() {
		
		try {
			// 1. InitialContext 객체 생성: 톰켓 서버에서 자원을 찾는 InitialContext
			Context initContext = new InitialContext();
			// 2. 컨텍스트 객체의 lookup 메소드로 JNDI에 등록되있는 서버 자원을 찾음 DataSource ds = (DataSource)
			// initialContext.lookup('java:/comp/env/jdbc/myoracle'); 과 동일
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/glyoracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
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
				System.out.println(rset.getString(1));
				System.out.println(rset.getString(2));
				System.out.println(rset.getInt(3));
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
	
	public void listBestProduct() {
		ArrayList<ImageVO> imageList = new ArrayList<ImageVO>();

		try {
			con = dataFactory.getConnection();
			System.out.println("Connection success");
			String query = "select * from best_img where rownum <= 4 order by p_name ";
			pstmt = con.prepareStatement(query);
			ResultSet rset = pstmt.executeQuery();
			while (rset.next()) {
				System.out.println(rset.getString(1));
			}
			rset.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
