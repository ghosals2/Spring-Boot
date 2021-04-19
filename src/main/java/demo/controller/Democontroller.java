package demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Democontroller {
	@GetMapping("/")
	public String getHome() {
		return "home";
	}
	@GetMapping("/leaders")
	public String getLeader() {
		return "leaders";
	}
	@GetMapping("/systems")
	public String getAdmin() {
		return "systems";
	}


}
