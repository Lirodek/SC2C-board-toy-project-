package com.org.proj.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.org.proj.domain.UserVo;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/auth/*")
public class AuthController {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);
	
	/**
	 * 홈으로 
	 * @param model
	 * @return
	 */
	
	@RequestMapping(value = "/naver", method=RequestMethod.GET)
	public String naver() {
       return "/auth/naver";
    }
	
	@RequestMapping(value = "/signup", method=RequestMethod.GET)
	public String naverConnect(Model model, 
			@RequestParam("name") String name,
			@RequestParam("phone") String phone,
			@RequestParam("image") String image,
			@RequestParam("email") String email
			) {
		
		System.out.println(name);
		System.out.println(MainController.mainUrl);
		System.out.println(image);
		System.out.println(email);
       return "redirect:/";
    		   
    }
}
