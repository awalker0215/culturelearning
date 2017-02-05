package org.iii.web.culture;

import java.util.List;
import java.util.Map;

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

	public List getallmaprinfo() {
		// TODO Auto-generated method stub
		List<Map<String, Object>> allmapinfo = studentRepository.selectallmaps();
		return allmapinfo;
	}

	public List getditail(String id) {
		List<Map<String, Object>> allditail = studentRepository.selectallditails(id);
		return allditail;
	}

	public int insertpoint(String classtype, String classname, String latx, String laty, String youtubeaddress,
			String content) {
		int updateCount = studentRepository.insertpoint(classtype,classname,latx,laty,youtubeaddress,content);
		return updateCount;
		
	}

	public List getmapinfo(String username) {
		List<Map<String, Object>> mapinfo = studentRepository.selectmaps(username);
		return mapinfo;
	}


	
}
