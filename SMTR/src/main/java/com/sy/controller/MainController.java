package com.sy.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.smtr.HomeController;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value="/")
	public String home(HttpServletRequest request) {
		
		request.setAttribute("mvo", request.getSession().getAttribute("login"));
		
		return "home";
	}
	
	

}
