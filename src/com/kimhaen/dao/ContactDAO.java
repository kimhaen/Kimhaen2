package com.kimhaen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.kimhaen.vo.ArchiveVO;
import com.kimhaen.vo.ContactVO;

public class ContactDAO {
	private ContactDAO() {}
	private static ContactDAO instance = new ContactDAO();
	public static ContactDAO getInstance()	{
		return instance;
	}
	
	public Connection getConnection() throws Exception{
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	// 리스트 화면
	public List<ContactVO> ContactList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM CONTACT ORDER BY NUM DESC";
		List<ContactVO> list = new ArrayList<ContactVO>();
		ContactVO vo = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
				while(rs.next()) {
					vo = new ContactVO();
					vo.setNum(rs.getInt("num"));
					vo.setName(rs.getString("name"));
					vo.setSubject(rs.getString("subject"));
					vo.setContents(rs.getString("contents"));
					vo.setEmail(rs.getString("email"));
					list.add(vo);
				}
			} catch (Exception e) {

			} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {

				}
			}
			return list;

	}
	// 등록 메소드
		public int ContactWrite(ContactVO vo) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String query = "INSERT INTO CONTACT(NUM,NAME,EMAIL,SUBJECT,CONTENTS) VALUES (CONTACT_SEQ_NUM.NEXTVAL,?,?,?,?)";
			int row = 0; // 리턴타입
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(query);
					
				pstmt.setString(1, vo.getName());
				pstmt.setString(2, vo.getEmail());
				pstmt.setString(3, vo.getSubject());
				pstmt.setString(4, vo.getContents());
				row = pstmt.executeUpdate();
		
				} catch (Exception e) {
				e.printStackTrace();
		
				} finally {
				try {
					if (rs != null)
						rs.close();
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
				}
			
			}
			return row;
		}
		

		// View 메소드 
		public ContactVO ContactView(int num) {
			Connection conn = null;
			PreparedStatement pstmt= null;
			ResultSet rs = null;
			String query="SELECT * FROM CONTACT WHERE NUM=?";
			ContactVO vo = null;
			try {
				conn = getConnection();//커넥션 풀 이용
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					vo = new ContactVO();
					vo.setNum(rs.getInt("num"));
					vo.setName(rs.getString("name"));
					vo.setSubject(rs.getString("subject"));
					vo.setContents(rs.getString("contents"));
					vo.setEmail(rs.getString("email"));
				}
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}catch(Exception e) {}
			}
			return vo;
		}
}
