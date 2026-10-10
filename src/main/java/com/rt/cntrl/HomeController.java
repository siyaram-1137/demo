package com.rt.cntrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index_page() {
		return "login";
	}
	
	@RequestMapping("/abcd")
	public String registerJSP() {
		return "register";
	}
	
	@RequestMapping("/update")
	public String updatePage() {
		return "update";
	}
	
	@RequestMapping("/remove")
	public String removePage() {
		return "delete";
	}
	
	@RequestMapping("/select")
	public String selectPage() {
		return "select";
	}

}
