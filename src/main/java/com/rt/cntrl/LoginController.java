package com.rt.cntrl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService ls;
	
	@RequestMapping("/checkUser")
	public String login(HttpServletResponse resp, @RequestParam String username , @RequestParam String password, Model m) {
		
		boolean isValid = ls.checkUser(username,password);
		
		if(isValid) {
			Cookie ck = new Cookie("user", username);
			resp.addCookie(ck);
			return "index";
		}else {
			m.addAttribute("errMsg","Wrong username or paaasword");
			return "login";
		}
		
		// Welcome
		
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession hs, Model m) {
		
			hs.invalidate();
		
			m.addAttribute("errMsg","");
			return "login";
		
	}

}
