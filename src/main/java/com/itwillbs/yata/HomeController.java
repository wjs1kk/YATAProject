package com.itwillbs.yata;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.yata.service.CouponService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.ReviewVO;
import org.springframework.ui.Model;

@Controller
public class HomeController {
	@Autowired
	private ReviewService service;
	@Autowired
	private CouponService couponService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		List<ReviewVO> reviewList = service.getReview();
//	    System.out.println(reviewList);
	    model.addAttribute("review", reviewList);
	    return "index";
	}
	//쿠폰번호 전달
	@GetMapping("event")
	public String event(String coup_code, Model model) {
		String coupon = couponService.getCouponNum(coup_code);
		model.addAttribute("coupon", coupon);
		System.out.println(coupon);
		return "notice/event";
	}
	@GetMapping("notice_view")
	public String notice_view() {

		return "notice/notice";
	}
	@GetMapping("customer_service")
	public String notice_service() {
		return "customer/customer_service_ke";
	}
	
}
