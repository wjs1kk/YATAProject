package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.ReservService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.ReservVO;
import com.itwillbs.yata.vo.ReviewVO;

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ReservService reservService;
	@GetMapping("login")
	public String login() {
		return "member/member_login";
	}

	@PostMapping("loginPro")
	public String loginPro(String member_email, String member_passwd, HttpSession session, Model model) {
		// db 데이터와 로그인 시 비밀번호 비교
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String passwd = memberService.getPasswd(member_email);
		if (passwd == null || !passwordEncoder.matches(member_passwd, passwd)) {
			model.addAttribute("msg", "로그인 실패!");
			return "fail_back";
		}
		System.out.println();
		session.setAttribute("member_email", member_email);
		System.out.println(session.getAttribute("member_email"));
		return "redirect:/";
	}

	@GetMapping("logout")
	public String logout(HttpSession session, HttpServletResponse response) {
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
		if (memberService.insertUser(member) == 0) {
			return "join";
		}
		return "redirect:/login";
	}

	@GetMapping("mypage")
	public String mypage(@RequestParam(value = "tab", required = false, defaultValue = "") String tab, MemberVO member, Model model, HttpSession session) {
		String member_email = (String) session.getAttribute("member_email");
		member = memberService.selectUser(member_email);
		model.addAttribute("member", member);
		if(tab.equals("history")) {	
			List<ReservVO> reservationList = reservService.myReservation(member_email);
			model.addAttribute("reservationList", reservationList);
			return "member/member_history";

		// 나의리뷰	
		} else if(tab.equals("review")) {
			List<ReviewVO> myReviewList = reviewService.myReview(member_email);
			Integer myReviewCount = reviewService.selectMyReviewCount((String) session.getAttribute("member_email"));
			model.addAttribute("myReview", myReviewList); // 나의 리뷰 가져오기
			model.addAttribute("myReviewCount", myReviewCount); // 나의 리뷰 개수

			return "member/member_review";

		// 포인트
		} else if(tab.equals("point")) {

			return "member/member_point";
		} else if(tab.equals("coupon")) {
		// 쿠폰
			return "member/member_coupon";
		}
		return "member/member_mypage";
	}
	// 내정보관리
	@GetMapping("modifyInfo")
	public String modifyInfo(MemberVO member, HttpSession session, Model model) {
		String member_email = (String)session.getAttribute("member_email");
		member = memberService.selectUser(member_email);
		model.addAttribute("member", member);
		if (member_email != null) {
			model.addAttribute("target", "confirm");
			return "move_to";
		} else {
			model.addAttribute("target", "login");
			return "move_to";
		}

	}
	
	// 내정보관리 -> 회원정보수정
	@GetMapping("modify")
	public String modify(HttpSession session, Model model) {
		String member_email = (String) session.getAttribute("member_email");
		model.addAttribute("member", memberService.selectUser(member_email));
		return "member/member_modify";
	}

	// 회원정보수정
	@PostMapping("modifyPro")
	public String modifyPro(Model model, HttpSession session, MemberVO memberVO, String member_passwd2) {
		String member_email = (String)session.getAttribute("member_email");
		memberVO.setMember_email(member_email);
		
		if(!memberVO.getMember_passwd().equals(member_passwd2)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(memberVO.getMember_passwd());
		memberVO.setMember_passwd(securePasswd);
		
		int updateCount = memberService.modifyUser(memberVO);

		if (updateCount > 0) {
			model.addAttribute("msg", "회원 정보 수정 완료!");
			model.addAttribute("target", "modify");
			return "success";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}

	}
	// 비밀번호 확인
	@GetMapping("confirm")
	public String confirm() {
		return "member/confirm";
	}
	// 비밀번호 확인
	@PostMapping("confirmPro")
	public String confirmPro(HttpSession session, Model model, String member_passwd) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String member_email = (String)session.getAttribute("member_email");
		String passwd = memberService.getPasswd(member_email);
		if (passwd == null || !passwordEncoder.matches(member_passwd, passwd)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다!");
			return "fail_back";
		} else {
			return "redirect:/modify";
		}

	}

	// 회원탈퇴
	@GetMapping("deleteMember")
	public String deleteMember(HttpSession session, Model model) {
		String member_email = (String)session.getAttribute("member_email");
		int deleteCount = memberService.deleteUser(member_email);
		if (deleteCount > 0) {
			model.addAttribute("msg", "회원 탈퇴 완료!");
			model.addAttribute("target", "redirect:/");
			session.invalidate();
			return "success";
		} else {
			model.addAttribute("msg", "회원 탈퇴 실패!");
			return "fail_back";
		}

	}
	@GetMapping("reviewWrite")
	public String reviewWrite(HttpSession session, Model model, MemberVO member) {
		String member_email = (String) session.getAttribute("member_email");
		member = memberService.selectUser(member_email);
		model.addAttribute("member", member);

		return "member/member_review_write";
	}

	@PostMapping("reviewWritePro")
	public String reviewWritePro(HttpSession session, Model model, MemberVO member, ReviewVO review) {
		String member_email = (String)session.getAttribute("member_email");
		member = memberService.selectUser(member_email);
		model.addAttribute("member", member);

		review.setMember_email(member_email);

		int insertCount = reviewService.writeReview(review);
		System.out.println(insertCount);
		if (insertCount > 0) {
			return "member/member_review";
		} else {
			model.addAttribute("msg", "후기 등록 실패!");
			return "fail_back";
		}

	}

}