package com.rt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class LoginDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean checkUser(String username, String password) {
		
		int rs = 0;
		
		try {
			
			Object args[] = {username,password};
			
			 rs  = jdbcTemplate.queryForObject("select count(*) from users where username = ? and password = ?",args, new RowMapper<Integer>() {

				@Override
				public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
					int count = rs.getInt(1);
					return count;
				}

			});
			
			} catch (Exception e2) {
				e2.printStackTrace();
			}	
		
		if(rs >= 1) {
			return true;
		}
		
		return false;
		
	}

}
