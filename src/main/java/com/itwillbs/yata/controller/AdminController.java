package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
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
	private CarService carService;
	@Autowired 
	private CouponService couponService;
	@Autowired
	private MemberService memberService;
	@GetMapping("admin")
	public String Admin(){
		return "admin/admin_main";
	}
	@GetMapping("AdminMemberList.ad")
	public String AdminMember(Model model) {
		
		List<MemberVO> memberList = memberService.memberList();
		
		model.addAttribute("memberList", memberList);
		
		return "admin/admin_member_list";
	}
	@GetMapping("AdminMemberInfo.ad")
	public String AdminMemberInfo(MemberVO member, Model model) {
		System.out.println(member);

		model.addAttribute("member", member);

		return "admin/admin_member_info";
	}
	
	@PostMapping("AdminMemberModifyPro.ad")
	public String AdminMemberModifyPro(MemberVO member, Model model) {
		System.out.println(member);

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String securePasswd = passwordEncoder.encode(member.getMember_passwd());
		member.setMember_passwd(securePasswd);
		System.out.println("수정된 회원 비밀번호 : " + securePasswd);


		int updateCount = memberService.AdminMemberModifyPro(member);
		if(updateCount > 0) {
			return "redirect:AdminMemberList.ad";
		} else {
			model.addAttribute("msg", "회원 정보 수정 실패!");
			return "fail_back";
		}
	}
	@GetMapping("AdminMemberDeletePro.ad")
	public String AdminMemberDeletePro(String member_email, Model model) {
		System.out.println(member_email);
		int deleteCount = memberService.AdminMemberDeletePro(member_email);
		return "redirect:/AdminMemberList.ad";
	}
	
	@GetMapping("AdminCarList.ad")
	public String AdminCar( Model model) {
		List<CarVO> carList = carService.selectCars();
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
	public String AdminCarUpdate(Model model, int car_id) {
		CarVO car = carService.selectCar(car_id);
		
		model.addAttribute("car", car);
		return "admin/admin_car_update";
	}
	
	@PostMapping("AdminCarUpdatePro.ad")
	public String carUpdate(CarVO new_car, Model model, int car_id) {
		new_car.setCar_id(car_id);
		int updateCount = carService.carUpdate(new_car);
		if(updateCount > 0) {
			model.addAttribute("msg", "차량 정보 수정 완료!");
			model.addAttribute("target", "AdminCarList.ad");
			return "success";
		} else {
			model.addAttribute("msg", "차량 정보 수정 실패!");
			return "fail_back";
		}
		
	}
	
	@GetMapping("AdminCarDelete.ad")
	public String carDelete(Model model, int car_id) {
		CarVO car = carService.selectCar(car_id);
		
		model.addAttribute("car", car);
		return "admin/admin_car_delete";
	}
	
	@PostMapping("AdminCarDeletePro.ad")
	public String carDeletePro(Model model, int car_id) {
		int deleteCount = carService.deleteCar(car_id);
		if(deleteCount > 0) {			
			
			model.addAttribute("msg", "삭제가 완료되었습니다!");
			model.addAttribute("target", "AdminCarList.ad");
			return "success";
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}

	}
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
