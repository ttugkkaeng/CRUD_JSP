// ���α׷� ���ϸ�: LibDao.java, �ۼ���: 20221222, ���� �����ð�: 20�� 10��
// ����: insert, update, delete, All Select ���� �κ�

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

	// ������ ���
	public LibDao() {

		// Driver ����

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
		
		// sql ���� ����
		stmt = con.createStatement();
		
		rs = stmt.executeQuery(sql);
		
		// ��ü �� �� ���� ����
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
        
        // Try-Catch: ���� ó��    
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
			// DB ����
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LibDto res = null;
		
		// SelectOne sql �� -> �ش� lib_index ���� ���� Select ����
		String sql = "SELECT * FROM lib WHERE lib_index=?";
		
		try {
			pstmt = con.prepareStatement(sql);
			
			// sql ù ��° ����ǥ ������ lib_index �� ����
			pstmt.setString(1, lib_index);
			
			// sql ���� ��� ����
			rs = pstmt.executeQuery();
			
			
			// Ư�� lib_index �࿡ �ش��ϴ� ������ ����
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
			// DB ����
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Insert - sql ��
			String sql = "INSERT INTO lib"
					+ " (lib_name, lib_code, ad_name, address, phone, url) VALUES(?,?,?, ?,?,?)";
			
			pstmt = conn.prepareStatement(sql);

			// ? �� �Է�
            pstmt.setString(1, "markany");
            pstmt.setString(2, "1234");
            pstmt.setString(3, "�����");
            pstmt.setString(4, "���빮���繮ȭ��");
            pstmt.setString(5, "010-1111-2222");
            pstmt.setString(5, "http://markany.com");

            // sql�� ���� Ƚ��
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
	
		// sql�� ���� ����
		if (res > 0) {
			return true;

		// sql�� ���� ����
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
			
			// DB ����
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Update - sql ��
			String sql = "update lib set lib_name=?, lib_code=? where lib_index=?";

			// ? �� ����
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getLib_name());
			pstmt.setString(2, dto.getLib_code());
			pstmt.setString(3, dto.getLib_index());

			// sql �� ���ư� Ƚ��
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
			
			// DB ����
			con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/db01", "root", "1234");
			
			// Update - sql ��
			String sql = "DELETE FROM lib WHERE lib_index=?";

			pstmt = con.prepareStatement(sql);
			// lib_index �� ������ ����
			pstmt.setNString(1, lib_index);

			// sql �� ���ư� Ƚ��
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
