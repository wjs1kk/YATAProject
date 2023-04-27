package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.CouponService;
import com.itwillbs.yata.vo.CouponVO;

@Controller
public class CouponController {
			
	@Autowired
	private CouponService couponService;
	
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
		//쿠폰 발급
		@PostMapping("AdminCouponRegistPro.ad")
		public String AdminCouponRegistPro(CouponVO coupon) {		
			couponService.adminCouponRegist(coupon);
			return "redirect:/AdminCouponList.ad";
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
		
		//쿠폰발급
		@SuppressWarnings("unused")
		@GetMapping("couponEnroll")
		public String Enroll(
				Model model, HttpSession session, @RequestParam int coup_idx) {

			String member_email = (String)session.getAttribute("member_email");
			
			if(member_email == null){
				model.addAttribute("msg", "로그인 필수!");
				return "fail_back";
			} else {			
				//이미 발급받은 쿠폰인지 확인
				Integer checkIdx = couponService.checkCode(coup_idx, member_email);
				if(checkIdx == null) {
						//발급					
						int EnrollCount = couponService.couponEnroll(coup_idx, member_email);
						
						if(EnrollCount > 0) {
							model.addAttribute("msg", "등록 완료!");							
							model.addAttribute("target", "event");
							return "success";
						} else{
							model.addAttribute("msg", "등록 실패!");
							return "fail_back";
						}
					}else {
						model.addAttribute("msg", "이미 발급 받으신 쿠폰입니다");
						return "fail_back";
				}
			}											
		}

}
