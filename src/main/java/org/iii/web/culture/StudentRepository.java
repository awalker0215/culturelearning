package org.iii.web.culture;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;






import javax.inject.Inject;
//import javax.inject.Inject;
import javax.sql.DataSource;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("StudentRepository")
@Transactional
public class StudentRepository {

	private JdbcTemplate jdbcTemplate;

	@Inject	
	public void init(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	
	public List selectactive() {
		String sql = "SELECT * FROM student_score";
		List<Map<String, Object>> list = this.jdbcTemplate.queryForList(sql);
			
		return list;
		

	}
	
	public List selectallUsers() {
		String sql = "SELECT * FROM student_score";
		List<Map<String, Object>> list = this.jdbcTemplate.queryForList(sql);
			
		return list;

	}
	
	public String selectUser(String username){
		String sql = "SELECT username FROM users WHERE username =?" ; 
		String accountName = this.jdbcTemplate.queryForObject(sql,String.class,username); 
		return accountName ; 

	}
	
	public Map<String, Object> selectUserall(String username){
		String sql = "SELECT * FROM users WHERE username =?" ; 
		Map<String, Object> map = this.jdbcTemplate.queryForMap(sql);		
		return map ; 

	}
	
	public String selectEmail(String username){
		String sql = "SELECT email FROM users WHERE username =?" ; 
		String email = this.jdbcTemplate.queryForObject(sql,String.class,username); 
		return email; 

	}
	
	public int insertUser(String username, String password, String email, String enabled)
	{ 
		String sql = "INSERT INTO users(username,password,email,enabled) VALUE(?,md5(?),?,?) ";
		int updateCount = jdbcTemplate.update(sql,
				new Object[] { username, password, email, enabled });
		return updateCount;

	}
	
	public void deleteUser(String username){
		String sql = "DELETE FROM users WHERE username =?" ; 
		this.jdbcTemplate.update(sql,username);	

	}
	//=======================
	public int insertpro(String username,String password,String sex,String email,int age, String enabled)
	{ 
		String sql0 = "SELECT COUNT(c_Id) FROM profile ";
		int count;
		int cid=0;
		count =this.jdbcTemplate.queryForObject(sql0,Integer.class);
		System.out.println(count);
		if(count==0){
			cid =1;
		}
		else{
			cid =count+1;
		}
		String sql = "INSERT INTO profile(p_sex,p_age,c_Id,username) VALUE(?,?,?,?) ";
		int updateCount = jdbcTemplate.update(sql,
				new Object[] { sex, age,cid,username});
		String sql2 = "INSERT INTO users(username,password,email,enabled) VALUE(?,md5(?),?,?) ";
		int updateCount2 = jdbcTemplate.update(sql2,
				new Object[] { username, password,email,1});
		String sql3 = "INSERT INTO user_roles(user_role_id,username,role) VALUE(?,?,?) ";
		int updateCount3 = jdbcTemplate.update(sql3,
				new Object[] { cid, username,"ROLE_USER"});
		return updateCount;

	}


	public List selectallmaps() {
		// TODO Auto-generated method stub

			String sql = "SELECT * FROM laction";
			List<Map<String, Object>> list = this.jdbcTemplate.queryForList(sql);
			return list;
	}
	
}
