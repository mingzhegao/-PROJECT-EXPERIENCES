package com.bd.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	@RequestMapping("/test1.action")
	public String test1() {
		
		return "customer";
	}
	@RequestMapping("/test2.action")
	public String test2() {
		
		return "login";	}
}
