package com.sy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sy.member.MemberServiceImpl;
import com.sy.member.MemberVO;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberServiceImpl memberService;
	
	
	@RequestMapping("/login/loginForm")
	public String loginForm() {
		return "login/loginForm";
	}
	
//	@RequestMapping("/login/loginCheck")
//	@ResponseBody
//	public MemberVO loginCheck(@RequestBody MemberVO mvo, HttpSession session, HttpServletRequest request) {
//		
//		MemberVO mvo1 = null;
//		mvo1 = memberService.loginCheck(mvo);
//		request.getSession().setAttribute("login", mvo1);
//		return mvo1;
//	}
//	
	@RequestMapping("/login/join")
	@ResponseBody
	public void join(@RequestBody MemberVO mvo){
		int no = memberService.join(mvo);
	}
	
	@RequestMapping
	public String logout(HttpSession session) {
		
		session.removeAttribute("login");
		
		return "redirect:/smtr";
	}
	
	
}
