package com.org.proj.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	/**
	 * 홈으로 
	 * @param model
	 * @return
	 */
	public static String mainUrl;
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		
		model.addAttribute("mainUrl", "main/main" );
		mainUrl="main";
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String another_home(Model model) {
		
		model.addAttribute("mainUrl", "main/main" );

		return "home";
	}
	
	// ===================== 홈으로 끝 =====================
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		mainUrl="login";
		model.addAttribute("mainUrl", "main/login" );

		return "home";
	}
	
}
