package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.service.MemberService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
import com.itwillbs.yata.vo.MemberVO;


@Controller
public class AdminController {

	@Autowired
	private MemberService memberService;
	
	@Autowired 
	private ReviewService reviewService;
	
	@Autowired
	private CarService carService;
			
	
	@GetMapping("admin")
	public String Admin(){
		return "admin/admin_main";
	}
	
	@GetMapping("AdminMemberList.me")
	public String AdminMember(MemberVO member, Model model) {
		
		List<MemberVO> memberList = memberService.memberList(member);
		
		model.addAttribute("memberList", memberList);
		
		return "admin/admin_member_list";
	}
	
	@GetMapping("AdminCarList.me")
	public String AdminCar(CarVO car, Model model) {
		
		List<CarVO> carList = carService.carList(car);
		
		model.addAttribute("carList", carList);
		
		return "admin/admin_car_list";
	}
	
	@GetMapping("AdminCarRegist.ad")
	public String AdminCarRegist(CarVO car, Model model) {
		return "admin/admin_car_regist";
	}
	
	@GetMapping("AdminCarRegistPro.ad")
	public String AdminCarRegistPro(CarVO car) {
		carService.adminCarRegist(car);
		return "redirect:/AdminCarList.me";
	}
}
