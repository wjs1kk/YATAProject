package com.itwillbs.yata.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.*;
import com.itwillbs.yata.vo.*;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ReviewService service;
	
	@GetMapping("login")
	public String login() {
		return "member/member_login";
	}
	
	@PostMapping("loginPro")
	public String loginPro(@RequestParam String member_email, String member_passwd, HttpSession session, Model model, MemberVO member) {
//	public String loginPro(@RequestParam String member_email, String member_passwd, HttpSession session, Model model, MemberVO member) {
//		System.out.println(member_email + " " + member_passwd);
		
		System.out.println(member);
		// -----------------------------------------------------------------
		// db 데이터와 로그인 시 비밀번호 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		String passwd = memberService.getPasswd(member.getMember_email());
		
		if(passwd == null || !passwordEncoder.matches(member.getMember_passwd(), passwd)) {
			model.addAttribute("msg", "로그인 실패!");
			return "fail_back";
		}
		// -----------------------------------------------------------------
//		member = memberService.checkUser(member_email, member_passwd);
		
		session.setAttribute("member_email", member.getMember_email());
		session.setAttribute("member_point", member.getMember_point());
		session.setAttribute("member_phone", member.getMember_phone());
		session.setAttribute("member_date", member.getMember_date());
		session.setAttribute("member_gender", member.getMember_gender());
		session.setAttribute("member_name", member.getMember_name());
	
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("join")
	public String join() {
		return "member/member_join";
	}
	@PostMapping("joinPro")
	public String joinPro(MemberVO member) {

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());

		member.setMember_passwd(securePasswd);
		if(memberService.insertUser(member) == 0) {
			return "join";
		}
		return "redirect:/login";
	}
	
	@GetMapping("mypage")
	public String mypage() {
		return "member/member_mypage";
	}
	@GetMapping("history")
	public String history() {
		return "member/member_history";
	}
	@GetMapping("coupon")
	public String coupon() {
		return "member/member_coupon";
	}
	@GetMapping("point")
	public String point() {
		return "member/member_point";
	}
	
	@GetMapping("review")
	public String review(Model model, HttpSession session, ReviewVO review) {
		List<ReviewVO> myReviewList = service.myReview((String)session.getAttribute("member_email"));
		Integer myReviewCount = service.selectMyReviewCount((String)session.getAttribute("member_email"));
//		System.out.println(myReviewList);
		model.addAttribute("myReview", myReviewList); // 나의 리뷰 가져오기
		model.addAttribute("myReviewCount", myReviewCount); // 나의 리뷰 개수
		System.out.println(model.getAttribute("myReviewCount"));
		return "member/member_review";
	}
}
