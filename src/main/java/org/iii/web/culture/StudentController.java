package org.iii.web.culture;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;


import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {
	@Resource(name = "StudentService")
	StudentService studentService;
	
	@RequestMapping(value = "culture/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}

		model.setViewName("culture/login");
		return model;

	}

	@RequestMapping(value = { "culture/Reception" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();
		
		/*List getactiveinfo = studentService.getactiveinfo();
		model.addObject("getactiveinfo", getactiveinfo);*/
	           
		model.setViewName("culture/Reception");
		return model;

	}
	
	@RequestMapping(value = { "culture/newinfo" }, method = RequestMethod.GET)
	public ModelAndView addPage() {

		ModelAndView model = new ModelAndView();
		
		/*List getactiveinfo = studentService.getactiveinfo();
		model.addObject("getactiveinfo", getactiveinfo);*/
	           
		model.setViewName("culture/addPage");
		return model;

	}
	
	@RequestMapping(value = "culture/refirsted", method = RequestMethod.GET)
	public ModelAndView commonPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();

		model.setViewName("culture/refirsted");
		
		return model;

	}
	
	
	

	@RequestMapping(value = "culture/insert", method = RequestMethod.POST)
	public ModelAndView insertPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		ModelAndView model = new ModelAndView();
		
		String password = (String)request.getParameter("password");
		String username = (String)request.getParameter("username");
		String sex = (String)request.getParameter("p_sex");
		String email = (String)request.getParameter("email");
		int age = (int)Integer.parseInt(request.getParameter("age"));
		studentService.insertpro(username,password, sex, email, age, "1");
		System.out.println("insert a user");
		
		/*List alluserinfo = studentService.getactiveinfo();
		model.addObject("alluserinfo", alluserinfo);*/

		model.setViewName("../../index");
		
		return model;
		
		}
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView selectmap() {

		ModelAndView model = new ModelAndView();

		List allmapinfo = studentService.getallmaprinfo();
		model.addObject("allmapinfo", allmapinfo);
	           
		model.setViewName("index");
		return model;

	}


}