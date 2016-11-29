package org.iii.web.student;

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
	
	public int insertUser(String username, String password, String email, String enabled) {

		int updateCount = studentRepository.insertUser(username, password, email, enabled);
		return updateCount;
	
	}
	
	public void deleteUser(String username) {

		studentRepository.deleteUser(username);
	
	}
	
}
