package com.port.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BlogController {

	@RequestMapping("/")
	public String homepage() {
		return "main";
	}
	@RequestMapping("main")
	public String gotomain() {
		return "main";
	}
	@RequestMapping("login")
	public String gotologin() {
		return "login";
	}
	@RequestMapping("signup")
	public String gotosignup() {
		return "signup";
	}
	@RequestMapping("aboutus")
	public String gotoaboutus() {
		return "aboutus";
	}

}
