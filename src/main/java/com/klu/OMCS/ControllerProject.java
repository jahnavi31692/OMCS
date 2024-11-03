package com.klu.OMCS;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerProject {
	@GetMapping("/")
	public String home(){
		return "home";
	}
	@GetMapping("/about")
	public String about(){
		return "about";
	}
	@GetMapping("/courses")
	public String courses(){
		return "courses";
	}
	@GetMapping("/login")
	public String login(){
		return "login";
	}
	@GetMapping("/mentors")
	public String mentors(){
		return "mentors";
	}
	@GetMapping("/feedback")
	public String feedback(){
		return "feedback";
	}
	@GetMapping("/signup")
	public String signup(){
		return "signup";
	}
}
