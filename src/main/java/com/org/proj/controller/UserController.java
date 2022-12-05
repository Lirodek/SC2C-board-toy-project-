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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.org.proj.domain.UserVo;
import com.org.proj.service.UserService;
import com.org.proj.utill.MsgMaker;

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
		idname = idname.replace(" ", "");
		vo.setUserIdname(idname);
		vo.setUserPassword(pw);
		vo = service.login(vo);
		String url = "";
		if (vo == null) {
			model.addAttribute("msg", MsgMaker.LOGIN_FAIL);
			url = "login";
			model.addAttribute("mainUrl", "main/" + url);
			return "home";
		} else {
			rttr.addFlashAttribute("msg", MsgMaker.LOGIN_SUCCESS+vo.getUserNickName()+"님 반갑습니다.");
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

		rttr.addFlashAttribute("msg", MsgMaker.LOGOUT);
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
	/**
	 * 메인 회원가입
	 * @param rttr
	 * @param session
	 * @param model
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/signup_Action", method = RequestMethod.POST)
	public String signup_Post(RedirectAttributes rttr, HttpSession session, Model model, UserVo vo) throws Exception {
		
		
		vo.setUserProfile("resources/imgs/default_profile.jpeg");
		vo.setUserEmail("");
		model.addAttribute("msg", MsgMaker.SIGNUP);
		
		service.signup_main(vo);
		
		String url = "main";
		model.addAttribute("mainUrl", "main/" + url);
		return "home";

	}
	
	@ResponseBody
	@RequestMapping(value = "/nicknameChk", method = RequestMethod.POST)
	public int nickNameCheck(UserVo vo) throws Exception {
		return service.checkNickName(vo);
	}
	
	/**
	 * 
	 * @param vo
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/idChk", method = RequestMethod.POST)
	public int idChk(UserVo vo) throws Exception {
		return  service.checkId(vo);
	}
	
	


}
