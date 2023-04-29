package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.service.CouponService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.PointService;
import com.itwillbs.yata.service.ReservService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.MemberVO;
import com.itwillbs.yata.vo.PointVO;
import com.itwillbs.yata.vo.ReservVO;
import com.itwillbs.yata.vo.ReviewVO;

@Controller
public class ReservController {
	@Autowired
	private CarService carService;
	@Autowired
	private ReservService reservService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private CouponService couponService;
	@Autowired
	private PointService pointService;
//	예약하기
	@GetMapping("rent1")
	public String rent1(Model model,String place_res) {
		model.addAttribute("carList",carService.selectCars());
		return "rent/rent";
	}
//	차량검색
	@GetMapping("search")
	public String car_seacrch(String car_name, Model model) {
		List<CarVO> carList = carService.searchByName(car_name);
		model.addAttribute("carList",carList);
		return "rent/rent";
	}
	
//	예약확인 
	@GetMapping("rent2")
	public String car_view(ReviewVO review, Model model,  HttpSession session, int car_id, String res_place) {
		if(res_place.equals("")) {
			model.addAttribute("msg","대여 위치를 선택해주세요!");
			return "fail_back";
		} 
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg","로그인이 필요합니다.");
			return "fail_back";
		} 
		List<ReviewVO> listReview = reviewService.listReview(res_place);

		model.addAttribute("listReview", listReview);
		model.addAttribute("car", carService.selectCar(car_id));
		return "rent/rent2";
	}

	@GetMapping("pay")
	public String pay(Model model, int car_id, String rentalDatetime, HttpSession session) {
		model.addAttribute("car", carService.selectCar(car_id));
		String member_email = (String) session.getAttribute("member_email");
		MemberVO member = memberService.selectUser(member_email);
		model.addAttribute("member", member);
		
		List<CouponVO> userCoupon = couponService.userCoupon(member_email);
		model.addAttribute("userCoupon", userCoupon);
		return "pay/pay";
	}
	
	@PostMapping("payPro")
	public String payPro(HttpSession session, ReservVO reservVO, String rentalDatetime, Model model, MemberVO member, int coup_idx, int use_point, 
			String res_place, int car_price, int time, int car_id) {
		String member_email = (String)session.getAttribute("member_email");
		String res_startDate = rentalDatetime.split("~")[0];
		String res_endDate = rentalDatetime.split("~")[1];

		reservVO.setMember_email(member_email);
		reservVO.setRes_endDate(res_endDate);
		reservVO.setRes_startDate(res_startDate);
		if(reservService.insertReserv(reservVO) == 0) {
			model.addAttribute("msg","예약실패");
			return "redirect:/pay";
		}
		String member_point =Integer.toString( member.getMember_point());
	    String res_totalprice = reservVO.getRes_totalPrice();
//	    member테이블 포인트 적립
	    pointService.updatePoint(member_email, member_point, res_totalprice, use_point);
//	    포인트사용
	    pointService.usePoint(member_email, member_point, use_point);
	    PointVO point = new PointVO();
	    point.setMember_email(member_email);
	    point.setPoint_content("예약");
	    point.setPoint_save(res_totalprice);
	    point.setPoint_used(Integer.toString(use_point));
	    String member_point2 = Integer.toString(memberService.selectUser(member_email).getMember_point());
		point.setMember_point(member_point2);
	    pointService.savePoint(point);
		
	    model.addAttribute("car", carService.selectCar(car_id));
	    
		reservService.update_car_available(reservVO.getCar_id());
		//쿠폰 적용후 coup_useable "N"처리
		if(!Integer.toString(coup_idx).equals("-1")) {
			couponService.couponUsed(Integer.toString(coup_idx), member_email);
			String coup_percent = couponService.selectCoupon(coup_idx).getCoup_percent();
			model.addAttribute("coup_percent",coup_percent);
			System.out.println(coup_percent);
		}
		return "pay/pay_success";
	}

	@GetMapping("car_type")
	public String car_type(@RequestParam(defaultValue = "") String car_type, Model model) {
		List<CarVO> carList = carService.car_type(car_type);
		model.addAttribute("carList", carList);
		return "rent/rent";
	}

}
