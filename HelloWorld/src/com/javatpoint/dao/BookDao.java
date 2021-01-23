package com.javatpoint.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Book;

public class BookDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/crud2020", "leecooper", "Toeic*990");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
	
	public static int save(Book b) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("insert into book(title,author,comment) values(?,?,?)");
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getComment());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int update(Book b) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con
					.prepareStatement("update book set title=?,author=?,comment=? where id=?");
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getComment());
			ps.setInt(4, b.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}
//
	public static int delete(Book b) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from book where id=?");
			ps.setInt(1, b.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
//
	public static List<Book> getAllRecords() {
		List<Book> list = new ArrayList<Book>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from book");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Book b = new Book();
				b.setId(rs.getInt("id"));
				b.setTitle(rs.getString("title"));
				b.setAuthor(rs.getString("author"));
				b.setComment(rs.getString("comment"));
				list.add(b);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Book getRecordById(int id) {
		Book b = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from book where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				b = new Book();
				b.setId(rs.getInt("id"));
				b.setTitle(rs.getString("title"));
				b.setAuthor(rs.getString("author"));
				b.setComment(rs.getString("comment"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
	}
	
}
