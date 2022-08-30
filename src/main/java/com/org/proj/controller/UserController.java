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
public class UserController {

	@Inject
	private UserService service;

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	/**
	 * 
	 * @param idname 아이디
	 * @param pw     비번
	 * @param model  모델
	 * @return 맞을시 main 을 리턴해준다. 틀릴시 login 을 리턴해준다
	 * @throws Exception
	 */
	@RequestMapping(value = "/user_login", method = RequestMethod.POST)
	public String login_Action(
			@RequestParam("username") String idname,
			@RequestParam("pass") String pw,
			RedirectAttributes rttr, HttpSession session, Model model) throws Exception {
		MainController.mainUrl="login";
		UserVo vo = new UserVo();
		vo.setUser_idname(idname);
		vo.setUser_password(pw);
		vo = service.login(vo);
		String url = "";
		if (vo == null) {
			rttr.addFlashAttribute("msg", "로그인 실패");
			url = "login";
			model.addAttribute("mainUrl", "main/" + url);
			return "home";
		} else {
			rttr.addFlashAttribute("msg", "로그인 성공");
			url = "main";
			model.addAttribute("mainUrl", "main/" + url);
			session.setAttribute("user", vo);
			return "redirect:/";
		}

	}

	@RequestMapping(value = "/user_logout", method = RequestMethod.GET)
	public String logout_Action(RedirectAttributes rttr, HttpSession session, Model model) throws Exception {

		String url = "";
		session.invalidate();

		rttr.addFlashAttribute("msg", "로그아웃 하였습니다.");
		url = "login";
		model.addAttribute("mainUrl", "main/" + url);
		return "redirect:/";

	}
	@RequestMapping(value = "/user_signup", method = RequestMethod.GET)
	public String signup_gourl(RedirectAttributes rttr, HttpSession session, Model model) throws Exception {
		MainController.mainUrl="user_signup";
		String url = "signup";
		model.addAttribute("mainUrl", "main/" + url);
		return "home";

	}

}
