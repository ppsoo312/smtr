package com.sy.controller;


import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sy.chef.ChefServiceImpl;


@Controller
public class ChefController {
	
	private static final Logger logger = LoggerFactory.getLogger(ChefController.class);
	
	@Autowired
	private ChefServiceImpl chefService;
	
	@ResponseBody
	@RequestMapping("/chef/popularChef")
	public List<Map<String, Object>> popularChef(@RequestParam int count) {
		
		List<Map<String, Object>> vo = null;
		// 전체회원수 구해오기
		int chefCount =  0;
		chefCount = chefService.chefCount();
		
		if(chefCount < 6) {
			count = chefCount;
			vo = chefService.popularChef(count);
		} else {			
			vo = chefService.popularChef(count);
		}
		

		return vo;
	}
	
	@ResponseBody
	@RequestMapping("/chef/searchRe")
	public List<Map<String, Object>> searchRe(@RequestParam int sel){
		List<Map<String, Object>> vo = null;
		vo = chefService.searchRe(sel);
		
		return vo;
	}
}
