package org.iii.web.culture;

import java.util.List;

import javax.inject.Inject;

import org.iii.web.login.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
//import javax.inject.Inject;
import org.springframework.stereotype.Service;

@Service("StudentService")
public class StudentService {
	
	@Inject
	private StudentRepository studentRepository;

	public List getallUserinfo() {

			List alluserinfo = studentRepository.selectallUsers();
			return alluserinfo;
		
	}
	
	public List getactiveinfo() {

		List alluserinfo = studentRepository.selectactive();
		return alluserinfo;
	
}
	
	public int insertUser(String username, String password, String email, String enabled) {

		int updateCount = studentRepository.insertUser(username, password, email, enabled);
		return updateCount;
	
	}
	
	public void deleteUser(String username) {

		studentRepository.deleteUser(username);
	
	}
	public int insertpro(String username, String password,String sex ,String email,int age,String enabled) {

		int updateCount = studentRepository.insertpro( username,password,sex,email,age,enabled);
		return updateCount;
	
	}
	
}
