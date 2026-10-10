package com.rt.cntrl;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.dto.StudentResponseDTO;
import com.rt.entities.Student;
import com.rt.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService ss;
	
	@RequestMapping("/addStudent")
	public String addStudent(HttpServletRequest req, @ModelAttribute Student s, HttpSession hs,Model m) {
		
		//String user = (String) hs.getAttribute("user");
		
		String user = null;
		
		Cookie[] ck = req.getCookies();
		
		for (Cookie cookie : ck) {
			
			if(cookie.getName().equals("user")) {
				 user = cookie.getValue();
			}
			
		}
		
		
		boolean isAdded = ss.addStudent(s,user);
		
		if(isAdded) {
			m.addAttribute("successMsg","Student Added Successfully...");
		}else {
			m.addAttribute("errMsg","Unabled to add Student...");
		}
		
		return "redirect:selectAllStudent";
	}
	
	@RequestMapping("/updateStudent")
	public String updateStudent(@ModelAttribute Student s ,Model m) {
		
		boolean isUpdated = ss.updateStudent(s);
		
		if(isUpdated) {
			m.addAttribute("successMsg","Student Updated Successfully...");
		}else {
			m.addAttribute("errMsg","Unabled to Update Student...");
		}
		
		return "redirect:selectAllStudent";
	}
	
	@RequestMapping("/removeStudent")
	public String removeStudent(@RequestParam int id ,Model m) {
		
		boolean isDeleted = ss.removeStudent(id);
		
		if(isDeleted) {
			m.addAttribute("successMsg","Student Updated Successfully...");
		}else {
			m.addAttribute("errMsg","Unabled to Update Student...");
		}
		
		return "redirect:selectAllStudent";
	}
	
	@RequestMapping("/selectStudent")
	public String selectStudent(@RequestParam int id ,Model m) {
		
		StudentResponseDTO s = ss.selectStudent(id);
		
		m.addAttribute("std", s);
		
		return "update";
	}
	
	@RequestMapping("/selectAllStudent")
	public String selectAllStudent(Model m, HttpSession hs) {
		
		String user = (String) hs.getAttribute("user");
		
		List<Student> list = ss.selectAllStudent(user);
		
		m.addAttribute("stdList", list);
		
		return "display";
	}
	
	/*
	 * @Scheduled(fixedRate = 3000) public String getAllStudentsCount() {
	 * 
	 * int count = ss.getAllStudentsCount();
	 * 
	 * System.out.println(count);
	 * 
	 * //m.addAttribute("count", count);
	 * 
	 * return "index"; }
	 */
	
	
	
}

