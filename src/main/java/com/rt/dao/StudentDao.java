package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.rt.entities.Student;

@Repository
public class StudentDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean addStudent(Student s, String user) {
		
		try {
			
			Object[] agrs = {s.getName(),s.getMobile(),s.getAddress(),user};
			
			int rs = jdbcTemplate.update("insert into student_data(name,mobile,location,user) values(?,?,?,?)",agrs);
			
			if(rs >= 1) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
		
	}

	public boolean updateStudent(Student s) {
		
		try {
			
			Object[] agrs = {s.getName(),s.getMobile(), s.getId()};
			
			int rs = jdbcTemplate.update("update student_data set name = ?,mobile = ? where id = ?",agrs);
			
			if(rs >= 1) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean removeStudent(int id) {
		
		try {
			
			Object[] agrs = {id};
			
			int rs = jdbcTemplate.update("delete from student_data where id = ?",agrs);
			
			if(rs >= 1) {
				return true;
			}else {
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Student selectStudent(int id) {
	
		try {
			
			Object[] agrs = {id};
			
			 Student std = jdbcTemplate.queryForObject("select * from student_data where id = ?",agrs, new RowMapper<Student>() {

				@Override
				public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
					Student s = new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
					return s;
				}
				 
			 });
			 
			 return std;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public List<Student> selectAllStudent(String user) {
		
		Object[] agrs = {user};
	
		try {
			
			  List<Student> list = jdbcTemplate.query("select * from student_data where user = ?", agrs, new RowMapper<Student>() {

				@Override
				public Student mapRow(ResultSet rs, int rowNum) throws SQLException {
					return new Student(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				}	

			  });
			 
			 return list ;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

	public int getAllStudentsCount() {
		
		int count;
		
		try {
			
		   count = jdbcTemplate.queryForObject("select count(*) from student_data", new RowMapper<Integer>() {

			@Override
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getInt(1);
			}

		  });
			 
			 return count ;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
}
