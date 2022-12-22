// 프로그램 파일명: LibDao.java, 작성일: 20221222, 최종 마감시간: 20시 10분
// 설명: insert, update, delete, All Select 실행 부분

package com.db.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.db.dto.LibDto;

public class LibDao {

	Connection con = null;

	// 생성자 등록
	public LibDao() {

		// Driver 연결

		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}

	// Select All
	public LibDto SelectAll(){
		
		Statement stmt = null;
		ResultSet rs = null;
		LibDto res = null;
		
		try {
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
		String sql = "SELECT * FROM LIB";
		
		// sql 쿼리 실행
		stmt = con.createStatement();
		
		rs = stmt.executeQuery(sql);
		
		// 전체 행 값 가져 오기
        while (rs.next()) {

        	res = new LibDto();
        	
            res.setLib_index(rs.getString(1));
            res.setLib_name(rs.getString(2));
            res.setLib_code(rs.getString(3));
            res.setAd_name(rs.getString(4));
            res.setAddress(rs.getString(5));
            res.setPhone(rs.getString(6));
            res.setUrl(rs.getString(7));
            res.setLib_time(rs.getString(8));
            res.setHoliday(rs.getString(9));
            res.setDevision(rs.getString(10));
            res.setDev_name(rs.getString(11));
            res.setLat(rs.getString(12));
            res.setLongitude(rs.getString(13));
            
        }
        
        // Try-Catch: 오류 처리    
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		
		return res;
		
	}

	
	// Select One
	public LibDto selectOne(String lib_index) {
		
		try {
			// DB 연결
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LibDto res = null;
		
		// SelectOne sql 문 -> 해당 lib_index 값을 통해 Select 실행
		String sql = "SELECT * FROM lib WHERE lib_index=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			
			// sql 첫 번째 물음표 구문에 lib_index 값 설정
			pstmt.setString(1, lib_index);
			
			// sql 실행 결과 저장
			rs = pstmt.executeQuery();
			
			
			// 특정 lib_index 행에 해당하는 정보값 추출
			while(rs.next()) {
				
				res = new LibDto();
				
				res.setLib_index(rs.getString(1));
				res.setLib_name(rs.getString(2));
				res.setLib_code(rs.getString(3));
				res.setAd_name(rs.getString(4));
				res.setAddress(rs.getString(5));
				res.setPhone(rs.getString(6));
				res.setUrl(rs.getString(7));
				res.setLib_time(rs.getString(8));
				res.setHoliday(rs.getString(9));
				res.setDevision(rs.getString(10));
				res.setDev_name(rs.getString(11));
				res.setLat(rs.getString(12));
				res.setLongitude(rs.getString(13));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return res;
		
	}

	// Insert
	public Boolean insert(LibDto dto) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		int res = 0;	
		
		try {
			// DB 연결
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Insert - sql 문
			String sql = "INSERT INTO lib"
					+ " (lib_name, lib_code, ad_name, address, phone, url) VALUES(?,?,?, ?,?,?)";
			
			pstmt = conn.prepareStatement(sql);

			// ? 값 입력
            pstmt.setString(1, "markany");
            pstmt.setString(2, "1234");
            pstmt.setString(3, "서울시");
            pstmt.setString(4, "동대문역사문화역");
            pstmt.setString(5, "010-1111-2222");
            pstmt.setString(5, "http://markany.com");

            // sql문 실행 횟수
            res = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
			}
		}
	
		// sql문 실행 성공
		if (res > 0) {
			return true;

		// sql문 실행 실패
		} else {
			return false;
		}
	}
	


	// Update
	public int update(LibDto dto) {
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		int res = 0;
		
		try {
			
			// DB 연결
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Update - sql 문
			String sql = "update lib set lib_name=?, lib_code=? where lib_index=?";

			// ? 값 설정
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLib_name());
			pstmt.setString(2, dto.getLib_code());
			pstmt.setString(3, dto.getLib_index());

			// sql 문 돌아간 횟수
			res = pstmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
			}
		}
		
		return res;
	}
	

	// Delete
	public int delete(String lib_index) {
	
		PreparedStatement pstmt = null; 
		int res = 0;
		
		try {
			
			// DB 연결
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Update - sql 문
			String sql = "DELETE FROM lib WHERE lib_index=?";

			pstmt = con.prepareStatement(sql);
			// lib_index 값 변수에 설정
			pstmt.setNString(1, lib_index);

			// sql 문 돌아간 횟수
			res = pstmt.executeUpdate();
			
			
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
			}
		}
		
		return res;
	}
}
