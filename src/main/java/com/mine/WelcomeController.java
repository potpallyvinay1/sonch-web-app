package com.mine;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {

	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	@RequestMapping("/")
	public String welcome() {
		
		return "index";
	}
	@RequestMapping("/about")
	public String welcome1() {
		
		return "about";
	}
	@RequestMapping("/index")
	public String welcome2() {
		
		return "index";
	}
	@RequestMapping("/contact")
	public String welcome3() {
		
		return "contact";
	}
	@RequestMapping("/power")
	public String welcome4() {
		
		return "power";
	}
	@RequestMapping("/serv")
	public String welcome5() {
		
		return "serv";
	}
	@RequestMapping("/service")
	public String welcome6() {
		
		return "service";
	}
	@RequestMapping("/servlog")
	public String welcome7() {
		
		return "servlog";
	}
	@RequestMapping("/sign")
	public String welcome8() {
		
		return "sign";
	}
	@RequestMapping("/signin")
	public String welcome9() {
		
		return "signin";
	}
	@RequestMapping("/signup1")
	public String welcome10() {
		
		return "signup1";
	}
	@RequestMapping("/super")
	public String welcome11() {
		
		return "super";
	}
	@RequestMapping("/work")
	public String welcome12() {
		
		return "work";
	}
	
	@RequestMapping("/request")
	public String welcome13() {
		
		return "request";
	}
	@RequestMapping("/ideasub")
	public String welcome14() {
		
		return "ideasub";
	}
	@RequestMapping("/power2")
	public String welcome15() {
		
		return "power2";
	}
	@RequestMapping("/terms")
	public String welcome16() {
		
		return "terms";
	}
	@RequestMapping("/powerranger")
	public String welcome17() {
		
		return "powerranger";
	}
	
	
}