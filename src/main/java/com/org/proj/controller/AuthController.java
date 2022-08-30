package com.org.proj.controller;

import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/auth/*")
public class AuthController {

	private static final Logger logger = LoggerFactory.getLogger(AuthController.class);

	@Inject
	private UserService service;
	private String rand_ninck[] = { "알바하는 제라툴", "낮잠자는 테사다", "지휘하는 알라라크", "군주밑의 캐리어", "블리자드 여행객", "총쏘는 레이너", "짐 레이너",
			"자라나는 자가라", "어지러운 프로브", "상남자 타이커스", "정찰가는 프로브", "성실한 테사다", "퇴임한 말라쉬", "소풍가는 노바", "노젓는 카락스", "먹자골목 데하카",
			"배틀타는 멩스크" };

	/**
	 * 홈으로
	 * 
	 * @param model
	 * @return
	 */

	@RequestMapping(value = "/naver", method = RequestMethod.GET)
	public String naver() {
		return "/auth/naver";
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String naverConnect(Model model, @RequestParam("name") String name, @RequestParam("image") String image,
			@RequestParam("email") String email, HttpSession session, RedirectAttributes rttr) throws Exception {

		UserVo vo = voMaker(email, image);

		System.out.println(vo);
		if (service.email_check(vo) == 0) {
			service.signup(vo);
		}
		vo = service.sns_login(vo);
		session.setAttribute("user", vo);
		return "redirect:/";

	}

	private UserVo voMaker(String email, String image) {
		Random rand = new Random();
		UserVo vo = new UserVo();
		vo.setUser_password("");
		vo.setUser_idname("");
		vo.setUser_email(email);
		vo.setUser_profile(image + "{0");
		vo.setUser_nickName(rand_ninck[rand.nextInt(1000) % rand_ninck.length]);
		
		return vo;
	}
}
