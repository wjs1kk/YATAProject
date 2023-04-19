package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.service.CouponService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.CouponVO;
import com.itwillbs.yata.vo.MemberVO;


@Controller
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	@Autowired 
	private ReviewService reviewService;
	
	@Autowired
	private CarService carService;
			
	@Autowired
	private CouponService couponService;
	
	@GetMapping("admin")
	public String Admin(){
		return "admin/admin_main";
	}
	
	@GetMapping("AdminMemberList.ad")
	public String AdminMember(MemberVO member, Model model) {
		
		List<MemberVO> memberList = memberService.memberList(member);
		
		model.addAttribute("memberList", memberList);
		
		return "admin/admin_member_list";
	}
	
	@GetMapping("AdminCarList.ad")
	public String AdminCar(CarVO car, Model model) {
		
		List<CarVO> carList = carService.carList(car);
		
		model.addAttribute("carList", carList);
		
		return "admin/admin_car_list";
	}
	
	@GetMapping("AdminCarRegist.ad")
	public String AdminCarRegist(CarVO car, Model model) {
		return "admin/admin_car_regist";
	}
	
	@PostMapping("AdminCarRegistPro.ad")
	public String AdminCarRegistPro(CarVO car) {
		carService.adminCarRegist(car);
		return "redirect:/AdminCarList.ad";
	}
	
	@GetMapping("AdminCarUpdate.ad")
	public String AdminCarUpdate(HttpSession session, Model model,@RequestParam String car_id) {
//		String id = (String)session.getAttribute("car_id");
		CarVO car = carService.carInfo(car_id);
		System.out.println(car);
		
		model.addAttribute("car", car);
		return "admin/admin_car_update";
	}
	
	@PostMapping("AdminCarUpdatePro.ad")
	public String carUpdate(CarVO car, Model model) {
		
		int updateCount = carService.carUpdate(car);
		
		
		if(updateCount > 0) {
			model.addAttribute("msg", "차량 정보 수정 완료!");
			model.addAttribute("target", "modify");
			return "success";
		} else {
			model.addAttribute("msg", "차량 정보 수정 실패!");
			return "fail_back";
		}		
	}
	// 쿠폰
		@GetMapping("AdminCouponList.ad")
		public String AdminCouponList(Model model) {
			List<CouponVO> couponList = couponService.couponList();

			model.addAttribute("couponList", couponList);
			return "admin/admin_coupon_list";
		}

		@GetMapping("AdminCouponRegist.ad")
		public String AdminCouponRegist() {
			
			return "admin/admin_coupon_regist";
		}
		
		//이메일 확인 후 쿠폰배급
		@PostMapping("AdminCouponRegistPro.ad")
		public String AdminCouponRegistPro(CouponVO coupon, MemberVO member , Model model) {	
			
			String registEmail = memberService.searchMemberEmail(member);
			
			if(registEmail != null)	{		
				couponService.adminCouponRegist(coupon);
				return "redirect:/AdminCouponList.ad";
			} else {
				model.addAttribute("msg", "해당 회원이 없습니다!");
				return "fail_back";
			}

		}
		
		@GetMapping("AdminCouponDelete.ad")
		public String couponDelete(Model model, int coup_idx) {
			CouponVO coupon = couponService.selectCoupon(coup_idx);
			
			model.addAttribute("coupon", coupon);
			return "admin/admin_coupon_delete";
		}
		
		@PostMapping("AdminCouponDeletePro.ad")
		public String couponDeletePro(Model model, int coup_idx) {
			int deleteCount = couponService.deleteCoupon(coup_idx);
			
			if(deleteCount > 0) {			
				
				model.addAttribute("msg", "삭제가 완료되었습니다!");
				model.addAttribute("target", "AdminCouponList.ad");
				return "success";
			} else {
				model.addAttribute("msg", "삭제 실패!");
				return "fail_back";
			}
		}
}
