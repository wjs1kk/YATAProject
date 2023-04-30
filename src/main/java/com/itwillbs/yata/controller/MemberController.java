package com.itwillbs.yata.controller;

<<<<<<< HEAD
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
=======
import java.net.http.*;
import java.util.List;

import javax.servlet.http.*;
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

<<<<<<< HEAD
import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.service.CouponService;

import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.PointService;
import com.itwillbs.yata.service.ReservService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.LicenseVO;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.PointVO;
import com.itwillbs.yata.vo.ReservVO;
import com.itwillbs.yata.vo.ReviewVO;
=======
import com.itwillbs.yata.service.*;
import com.itwillbs.yata.vo.*;
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93

@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ReservService reservService;
	@Autowired
	private CarService carService;
	@Autowired
	private PointService pointService;
<<<<<<< HEAD
	@Autowired 
	private CouponService couponService;

=======
	@Autowired
	private LicenseService licenseService;
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93
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
		//관리자 로그인한 사람이 관리자 권한이 있는 지 확인
		String isAdmin =  memberService.isAdmin(member_email);
		// sesiion이 관리자권한 확인 후 세션 세팅
		if(isAdmin.equals("1")) {
			session.setAttribute("isAdmin", isAdmin);
		}
		session.setAttribute("member_email", member_email);
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
	public String mypage(@RequestParam(value = "tab", required = false, defaultValue = "") String tab, Model model, HttpSession session, HttpServletRequest req, LicenseVO license) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "redirect:/login";
		}
		String member_email = (String) session.getAttribute("member_email");
		MemberVO member = memberService.selectUser(member_email);
		model.addAttribute("member", member);
		
		List<CouponVO> userCoupon = couponService.userCoupon(member_email);
		int userCoupon_count = userCoupon.size();
		model.addAttribute("userCoupon_count",userCoupon_count);
		
		if(tab.equals("history")) {	
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			List<ReservVO> resList = reservService.myReservation(member_email);
			model.addAttribute("resList", resList);
			
			return "member/member_history";

		// 나의리뷰	
		} else if(tab.equals("review")) {
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			List<ReviewVO> myReviewList = reviewService.myReview(member_email);
			model.addAttribute("myReview", myReviewList); // 나의 리뷰 가져오기

			return "member/member_review";

		// 포인트
		} else if(tab.equals("point")) {
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			List<PointVO> myPoint = pointService.myPoint(member_email);
			model.addAttribute("myPoint", myPoint);
			System.out.println(myPoint);
			return "member/member_point";
		} else if(tab.equals("coupon")) {
		// 쿠폰
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			model.addAttribute("userCoupon",userCoupon);
			return "member/member_coupon";
		} else if(tab.equals("license")) {
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			return "member/member_license";
		}
		return "member/member_mypage";
	}
	
	// 운전면허 등록
	@GetMapping("licensePro")
	public String licensePro(HttpServletRequest req, LicenseVO license, HttpSession session, Model model) {
		String member_email = (String) session.getAttribute("member_email");
		String license_pass = license.getLicense_pass();
		String license_num = req.getParameter("license_num");
		
		license.setMember_email(member_email);
		license.setLicense_pass(license_pass);
		license.setLicense_num(req.getParameter("license_num"));
		
		
		int insertCount = memberService.insertLicense(license);
		
		System.out.println(member_email + ", " + license_pass + ", " + license_num);
		
		if(insertCount > 0) {
			model.addAttribute("msg", "운전면허증 등록 완료");
			model.addAttribute("target", "mypage");
			return "success";
		}  else {
			model.addAttribute("msg", "운전면허증 등록 실패");
			return "fail_back";
		}
	}
	// 내정보관리
	@GetMapping("modifyInfo")
	public String modifyInfo(MemberVO member, HttpSession session, Model model) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "login";
		}
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
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "login";
		}
		String member_email = (String) session.getAttribute("member_email");
		model.addAttribute("member", memberService.selectUser(member_email));
		return "member/member_modify";
	}

	// 회원정보수정
	@PostMapping("modifyPro")
<<<<<<< HEAD
	public String modifyPro(Model model, HttpServletRequest req,HttpSession session, MemberVO memberVO, String member_passwd2, LicenseVO license) {
=======
	public String modifyPro(Model model, HttpServletRequest req, HttpSession session, MemberVO memberVO, String member_passwd2, LicenseVO license) {
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93
		String member_email = (String)session.getAttribute("member_email");
		memberVO.setMember_email(member_email);
		
		if(!memberVO.getMember_passwd().equals(member_passwd2)) {
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다.");
			return "fail_back";
		}
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(memberVO.getMember_passwd());
		memberVO.setMember_passwd(securePasswd);
		
		String license_num = req.getParameter("city") + "-" + req.getParameter("license_num") + "-" + req.getParameter("license_num2") + "-" + req.getParameter("license_num3");
		
		license.setMember_email(member_email);
		license.setLicense_num(license_num);
		
		int insertCount = licenseService.insertLicense(license);
		
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
	public String confirm(HttpSession session, Model model) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "redirect:/login";
		}
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
	// 2023-04-27 김동욱 - AJAX 회원가입 이메일 중복체크
	@PostMapping("MemberEmailCheck")
	public void memberEmailCheck(@RequestParam(defaultValue = "") String member_email, HttpServletResponse response) {
		System.out.println(member_email);
		try {
			// 사용중인 member_email이 없으면 view페이지로 true 있으면 false를 보냄!
			String email = memberService.memberEmailCheck(member_email);
			System.out.println(email);
			if(email == null) {
				response.getWriter().print("true");
			}else {
				response.getWriter().print("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 회원탈퇴
	@GetMapping("deleteMember")
	public String deleteMember(HttpSession session, Model model) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "redirect:/login";
		}
		String member_email = (String)session.getAttribute("member_email");
		int deleteCount = memberService.deleteUser(member_email);
		if (deleteCount > 0) {
			model.addAttribute("msg", "회원 탈퇴 완료!");
			session.invalidate();
			return "success";
		} else {
			model.addAttribute("msg", "회원 탈퇴 실패!");
			return "fail_back";
		}
	}
	
	// 예약내역 -> 리뷰 작성
<<<<<<< HEAD
	@GetMapping("reviewWrite")
	public String reviewWrite(HttpSession session, Model model, MemberVO member, @RequestParam Integer res_id) {
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg", "로그인 후 이용가능합니다.");
			return "redirect:/login";
=======
		@GetMapping("reviewWrite")
		public String reviewWrite(HttpSession session, Model model, MemberVO member, @RequestParam Integer res_id, String review_place) {
			String member_email = (String) session.getAttribute("member_email");
			member = memberService.selectUser(member_email);
			model.addAttribute("member", member);
			
			Integer review = reviewService.getResId(res_id);
			
			if(review != null) {
				model.addAttribute("msg", "이미 작성된 리뷰입니다!");
				return "fail_back";
			}
			
			return "member/member_review_write";
>>>>>>> afc33c2d139bce7eda0cd5f975d41b67792ade93
		}
		String member_email = (String) session.getAttribute("member_email");
		member = memberService.selectUser(member_email);
		model.addAttribute("member", member);
		
		Integer review = reviewService.getResId(res_id);
		
		if(review != null) {
			model.addAttribute("msg", "이미 작성된 리뷰입니다!");
			return "fail_back";
		}
		
		return "member/member_review_write";
	}
	
	// 리뷰 작성
	@PostMapping("reviewWritePro")
	public String reviewWritePro(HttpSession session, Model model,  ReviewVO review, int res_id, String res_place) {

		String member_email = (String)session.getAttribute("member_email");
		MemberVO member = memberService.selectUser(member_email);

		review.setMember_email(member_email);
		review.setRes_id(res_id);
		review.setMember_name(member.getMember_name());
		review.setReview_place(res_place);
		
		int insertCount = reviewService.insertReview(review);
		if (insertCount > 0) {
			return "redirect:/mypage?tab=history";
		} else {
			model.addAttribute("msg", "후기 등록 실패!");
			return "fail_back";
		}
	}
	
	// 예약내역 상세보기
		@GetMapping("historyDetails")
		public String historyDetails(HttpSession session, Model model, @RequestParam Integer res_id, CarVO car, ReservVO res) {
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			String member_email = (String)session.getAttribute("member_email");
			MemberVO member = memberService.selectUser(member_email);
			model.addAttribute("member", member);

			ReservVO reserve = reservService.getReserveList(res_id);
			car.setCar_id(res.getRes_id());
			
			car = carService.selectCar(car.getCar_id());
			
			model.addAttribute("reserve", reserve);
			model.addAttribute("car", car);

			return "member/member_history_details";
		}
		
		// 예약 내역 ->예약 취소
		@GetMapping("deleteReserve")
		public String deleteReserve(Model model, ReservVO reserve, @RequestParam Integer res_id, HttpSession session) {
			if(session.getAttribute("member_email") == null) {
				model.addAttribute("msg", "로그인 후 이용가능합니다.");
				return "redirect:/login";
			}
			reserve = reservService.getReserveList(res_id);
			
			int deleteCount = reservService.deleteReserve(reserve.getRes_id());
			System.out.println(deleteCount);
			
			if(deleteCount > 0) {
				model.addAttribute("msg", "예약이 취소 되었습니다!");
				model.addAttribute("target", "redirect:/mypage?tab=history");
				return "success";
			} else {
				model.addAttribute("msg", "실패");
				return "fail_back";
			}

		}


}