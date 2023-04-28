package com.itwillbs.yata.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.KakaoService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.vo.MemberVO;

@Controller
public class KakaoController {
	@Autowired
	MemberService memberService;
	@Autowired
	KakaoService kakaoService;

	@RequestMapping("/kakao")
	public String kakaoLogin(@RequestParam(value = "code") String code, MemberVO memberv, HttpSession session,
			HttpServletRequest request, Model model, HttpServletResponse response) {
		String access_Token = kakaoService.getAccessToken(code);

		HashMap<String, Object> userInfo = kakaoService.getUserInfo(access_Token);
		System.out.println("login Controller : " + userInfo);
		String member = memberService.loginLookup(userInfo.get("email"));
		System.out.println(member);
		// 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
		if (userInfo.get("email").equals(member)) {
			session.setAttribute("member_email", userInfo.get("email"));
			session.setAttribute("access_Token", access_Token);
		} else {
			try {
				model.addAttribute("member_email", userInfo.get("email"));
				response.setContentType("text/html; charset=utf-8");
		        PrintWriter w = response.getWriter();
		        w.write("<script>alert('회원가입 필요!');location.href='join?member_email="+userInfo.get("email")+"';</script>");
		        w.flush();
		        w.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/";
	}

}
