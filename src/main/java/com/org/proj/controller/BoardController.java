package com.org.proj.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.org.proj.domain.UserVo;
import com.org.proj.service.UserService;

@Controller
public class BoardController {

	@Inject
	private UserService service;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@RequestMapping(value = "/board_protoss", method = RequestMethod.GET)
	public String logout_Action(RedirectAttributes rttr, HttpSession session, Model model) throws Exception {

		String url = "";

		rttr.addFlashAttribute("msg", "로그아웃 하였습니다.");
		url = "protoss";
		model.addAttribute("mainUrl", "board/" + url);
		return "home";

	}
}
