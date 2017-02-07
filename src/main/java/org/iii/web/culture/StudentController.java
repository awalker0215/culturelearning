package org.iii.web.culture;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
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
	
	
	
	
	
	@RequestMapping(value = "/culture/login", method = RequestMethod.GET)
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

	@RequestMapping(value = { "/culture/Reception" }, method = RequestMethod.GET)
	public ModelAndView defaultPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		String id = (String)request.getParameter("id");
		System.out.println(id);
		List<Map<String, Object>> ditailinfo= studentService.getditail(id);
		model.addObject("ditailinfo", ditailinfo);

	           
		model.setViewName("culture/Reception");
		return model;

	}
	
	@RequestMapping(value = { "/culture/locationedit" }, method = RequestMethod.GET)
	public ModelAndView defaultPagetest(HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView model = new ModelAndView();

		model.setViewName("culture/location_edit");
		return model;

	}
	
	@RequestMapping(value = { "/culture/addpage" }, method = RequestMethod.GET)
	public ModelAndView addPage(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_USER"))
	            {
	            	String username = userDetail.getUsername();
	    			/*List alluserinfo = studentService.getmaprinfo(username);
	    			model.addObject("alluserinfo", alluserinfo);*/
	            	model.addObject("username", username.toString());
	            }
	            else
	            {
	            	String username = userDetail.getUsername();
	    			//String useremail = studentService.getUserEmail(username);
	    			//model.addObject("useremail", );
	            	model.addObject("username", username.toString());
	            }
	        }
		}
	           
		model.setViewName("culture/user_edit");
		return model;

	}
	
	@RequestMapping(value = "/culture/refirsted", method = RequestMethod.GET)
	public ModelAndView commonPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();

		model.setViewName("culture/refirsted");
		
		return model;

	}
	
	
	

	@RequestMapping(value = "/culture/insertuser", method = RequestMethod.POST)
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
		List<Map<String, Object>> allmapinfo= studentService.getallmaprinfo();
		model.addObject("allmapinfo", allmapinfo);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addObject("address", "");
		
		model.setViewName("../../index");

		return model;
		
		}
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView selectmap() {

		ModelAndView model = new ModelAndView();

		List<Map<String, Object>> allmapinfo= studentService.getallmaprinfo();
		model.addObject("allmapinfo", allmapinfo);
		String address = "culture/";
		model.addObject("address", "culture/");
		/*for(Map<String, Object> i:allmapinfo)
			System.out.println(i);*/
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_USER"))
	            {
	            	String username = userDetail.getUsername();
	    			/*List alluserinfo = studentService.getmaprinfo(username);
	    			model.addObject("alluserinfo", alluserinfo);*/
	            	model.addObject("username", username.toString());
	            }
	            else
	            {
	            	String username = userDetail.getUsername();
	    			//String useremail = studentService.getUserEmail(username);
	    			//model.addObject("useremail", );
	            	model.addObject("username", username.toString());
	            }
	        }
		}
		
		model.setViewName("../../index");
		
		return model;

	}
	

	@RequestMapping(value = "/culture/addpoint", method = RequestMethod.POST)
	public ModelAndView addpointPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		
		String classtype = (String)request.getParameter("class");
		String classname = (String)request.getParameter("classname");
		String latx = (String)request.getParameter("inLatLngx");
		String laty = (String)request.getParameter("inLatLngy");
		String youtubeaddress = (String)request.getParameter("classVideo");
		String content = (String)request.getParameter("content");
		String username = (String)request.getParameter("username");
		//studentService.addpoint();
		System.out.println(classtype+" "+classname+" "+latx+" "+laty+" "+youtubeaddress+" "+content+" "+username);
		studentService.insertpoint(classtype,classname, latx, laty, youtubeaddress, content);
		List<Map<String, Object>> allmapinfo= studentService.getallmaprinfo();
		model.addObject("allmapinfo", allmapinfo);
		/*List<Map<String, Object>> allmapinfo= studentService.getallmaprinfo();
		model.addObject("allmapinfo", allmapinfo);*/
		/*List alluserinfo = studentService.getactiveinfo();
		model.addObject("alluserinfo", alluserinfo);*/
		model.addObject("address", "");
		model.setViewName("../../index");
		
		return model;
		
		}
	
	@RequestMapping(value = "/culture/userdata", method = RequestMethod.GET)
	public ModelAndView userPage(HttpServletRequest request,
			HttpServletResponse response) {
		
		ModelAndView model = new ModelAndView();
		String ownername = (String)request.getParameter("username");
		List<Map<String, Object>> mapinfo= studentService.getmapinfo(ownername);
		/*for(Map<String, Object> i:mapinfo)
			System.out.println(i);*/
		model.addObject("mapinfo", mapinfo);
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			for (GrantedAuthority authority : userDetail.getAuthorities()) {
	            if (authority.getAuthority().equals("ROLE_USER"))
	            {
	            	String username = userDetail.getUsername();
	    			/*List alluserinfo = studentService.getmaprinfo(username);
	    			model.addObject("alluserinfo", alluserinfo);*/
	            	model.addObject("username", username.toString());
	            }
	            else
	            {
	            	String username = userDetail.getUsername();
	    			//String useremail = studentService.getUserEmail(username);
	    			//model.addObject("useremail", );
	            	model.addObject("username", username.toString());
	            }
	        }
		}

		model.setViewName("culture/user_data");
		
		return model;

	}
}