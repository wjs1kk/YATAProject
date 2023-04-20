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
import com.itwillbs.yata.service.ReservService;
import com.itwillbs.yata.service.ReviewService;
import com.itwillbs.yata.vo.CarVO;
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
	
	@GetMapping("rent1")
	public String rent1(Model model,String place_res) {
		model.addAttribute("carList",carService.selectCars());
		return "rent/rent";
	}
	@GetMapping("search")
	public String car_seacrch(String car_name, Model model) {
		List<CarVO> carList = carService.searchByName(car_name);
		model.addAttribute("carList",carList);
		return "rent/rent";
	}
	
//	예약확인 
	@GetMapping("rent2")
	public String car_view(ReviewVO review, Model model,  HttpSession session, int car_id, String res_place, String ins) {
		if(res_place.equals("")) {
			model.addAttribute("msg","대여 위치를 선택해주세요!");
			return "fail_back";
		} else if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg","로그인이 필요합니다.");
			return "fail_back";
		} 
		if(ins==null) {
			model.addAttribute("msg","보험 종류를 선택해주세요!");
			return "fail_back";
		}
		List<ReviewVO> listReview = reviewService.listReview(res_place);
		System.out.println(listReview);
		model.addAttribute("listReview", listReview);
		model.addAttribute("car", carService.selectCar(car_id));
		return "rent/rent2";
	}

	@GetMapping("pay")
	public String pay(Model model, int car_id, String rentalDatetime) {
		model.addAttribute("car", carService.selectCar(car_id));
		String res_startDate = rentalDatetime.split("~")[0];
		String res_endDate = rentalDatetime.split("~")[1];
		System.out.println(res_endDate);
		System.out.println(res_startDate);
		return "pay/pay";
	}
//	#{res_id}, #{member_email},
//	#{car_id}, #{res_startDate},
//	#{res_endDate}, now(), #{res_totalPrice}, #{res_place})
	@GetMapping("payPro")
	public String payPro(HttpSession session, ReservVO reservVO, String rentalDatetime, Model model) {
		String member_eamil = (String)session.getAttribute("member_email");
		String res_startDate = rentalDatetime.split("~")[0];
		String res_endDate = rentalDatetime.split("~")[1];

		reservVO.setMember_email(member_eamil);
		reservVO.setRes_endDate(res_endDate);
		reservVO.setRes_startDate(res_startDate);
		if(reservService.insertReserv(reservVO) == 0) {
			model.addAttribute("msg","예약실패");
			return "redirect:/pay_success";
		}
		return "redirect:/pay_success";
	}
	
	@GetMapping("pay_success")
	public String pay_success() {
		return "pay/pay_success";
	}

}
