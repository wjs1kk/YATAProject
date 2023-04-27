package com.itwillbs.yata.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.KakaoService;
import com.itwillbs.yata.service.MemberService;

@Controller
public class KakaoController {
	@Autowired
	MemberService memberService;
	@Autowired
	KakaoService kakaoService;
	
	@RequestMapping("/kakao")
	 public String kakaoLogin(@RequestParam(value = "code") String code,
			 HttpSession session, HttpServletRequest request){
		 String access_Token = kakaoService.getAccessToken(code);
	        System.out.println("controller access_token : " + access_Token);
	        
	        return "index";
	}
}
