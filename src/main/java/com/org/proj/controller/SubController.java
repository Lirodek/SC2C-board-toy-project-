package com.org.proj.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SubController {
	
	private static final Logger logger = LoggerFactory.getLogger(SubController.class);
	
	@RequestMapping(value = "/util/instructor", method = RequestMethod.GET)
	public String logout_Action(RedirectAttributes rttr, HttpSession session, Model model) throws Exception {

		String url = "";
		url = "instructor";
		model.addAttribute("mainUrl", "main/" + url);
		return "home";

	}
}
