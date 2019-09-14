package com.kimhaen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.kimhaen.vo.GalleryVO;

public class GalleryDAO {
	private GalleryDAO() {}
	private static GalleryDAO instance = new GalleryDAO();
	public static GalleryDAO getInstance()	{
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
	public List<GalleryVO> GalleryList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM GALLERY ORDER BY NUM DESC";
		List<GalleryVO> list = new ArrayList<GalleryVO>();
		GalleryVO vo = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
				while(rs.next()) {
					vo = new GalleryVO();
					vo.setNum(rs.getInt("num"));
					vo.setName(rs.getString("name"));
					vo.setSubject(rs.getString("subject"));
					vo.setContents(rs.getString("contents"));
					vo.setIndate(rs.getString("indate").substring(0,10));
					vo.setReadcnt(rs.getInt("readcnt"));
					vo.setFilename(rs.getString("filename"));
					vo.setYears(rs.getString("years"));
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
	public int GalleryWrite(GalleryVO gal) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "INSERT INTO GALLERY(NUM,NAME,SUBJECT,CONTENTS,FILENAME,YEARS) VALUES (GALLERY_SEQ_NUM.NEXTVAL,?,?,?,?,?)";
		int row = 0; // 리턴타입
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
				
			pstmt.setString(1, gal.getName());
			pstmt.setString(2, gal.getSubject());
			pstmt.setString(3, gal.getContents());
			pstmt.setString(4, gal.getFilename());
			pstmt.setString(5, gal.getYears());
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
	
		//조회수 증가 메소드
		public int GalleryCount(int num){
			Connection conn = null;
			PreparedStatement pstmt= null;
			ResultSet rs = null;
			int row  = 0;
			String query="UPDATE GALLERY SET READCNT = READCNT+1 WHERE NUM=?";
			try {
				conn = getConnection();//커넥션 풀 이용
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, num);
				row = pstmt.executeUpdate();
			}catch(Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			return row;
		}
		// View 메소드 
		public GalleryVO GalleryView(int num) {
			Connection conn = null;
			PreparedStatement pstmt= null;
			ResultSet rs = null;
			String query="SELECT * FROM GALLERY WHERE NUM=?";
			GalleryVO vo = null;
			try {
				conn = getConnection();//커넥션 풀 이용
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					vo = new GalleryVO();
					vo.setNum(rs.getInt("num"));
					vo.setName(rs.getString("name"));
					vo.setSubject(rs.getString("subject"));
					vo.setContents(rs.getString("contents"));
					vo.setIndate(rs.getString("indate").substring(0,10));
					vo.setReadcnt(rs.getInt("readcnt"));
					vo.setFilename(rs.getString("filename"));
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
		// 수정 메소드
					public int GalleryModify(GalleryVO vo)  {
						Connection conn = null;
						PreparedStatement pstmt = null;
						ResultSet rs = null;
						
						String query = "UPDATE GALLERY SET YEARS=?, SUBJECT=?, CONTENTS=?, FILENAME=? WHERE NUM=? ";
						int row = 0;
						try {
							conn = getConnection();
							pstmt = conn.prepareStatement(query);
											
							pstmt.setString(1, vo.getYears());
							pstmt.setString(2, vo.getSubject());
							pstmt.setString(3, vo.getContents());
							pstmt.setString(4, vo.getFilename());
							pstmt.setInt(5, vo.getNum());		
							
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
					
			//삭제 메소드	
					public int GalleryDelete(int num){
					Connection conn = null;
					PreparedStatement pstmt= null;
					ResultSet rs = null;
					String query="DELETE FROM GALLERY WHERE NUM=?";
					int row = 0;
					
					try {
						conn = getConnection();//커넥션 풀 이용
						pstmt = conn.prepareStatement(query);
						pstmt.setInt(1, num);
						row = pstmt.executeUpdate();
					
					}catch(Exception e) {
						e.printStackTrace();
					}finally {
						try {
							if(rs != null) rs.close();
							if(pstmt != null) pstmt.close();
							if(conn != null) conn.close();
						}catch(Exception e) {}
					}
					return row;
				}
	 
					
				// Search 메소드
					
					   public List<GalleryVO> GallerySearch(String option, String input) {
			               Connection conn = null;
			               PreparedStatement pstmt = null;
			               ResultSet rs = null;
			                  String query = "select * from Gallery where "+option+" like'%"+input+"%'";
			               List<GalleryVO> list = new ArrayList<GalleryVO>();
			               GalleryVO vo = null;
			               try {
			                  conn = getConnection();
			                  pstmt = conn.prepareStatement(query);
			                  //pstmt.setString(1, option);
			                  rs = pstmt.executeQuery();
			                  while(rs.next()) {
									vo = new GalleryVO();
									vo.setNum(rs.getInt("num"));
									vo.setName(rs.getString("name"));
									vo.setSubject(rs.getString("subject"));
									vo.setContents(rs.getString("contents"));
									vo.setIndate(rs.getString("indate").substring(0,10));
									vo.setReadcnt(rs.getInt("readcnt"));
									vo.setFilename(rs.getString("filename"));
									vo.setYears(rs.getString("years"));
									list.add(vo);
								}
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
			               return list;
			            }
			   
			      
			      
			   }	
					



	
