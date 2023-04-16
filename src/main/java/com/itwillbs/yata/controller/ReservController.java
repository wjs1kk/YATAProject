package com.itwillbs.yata.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.yata.service.CarService;
import com.itwillbs.yata.vo.CarVO;

@Controller
public class ReservController {
	@Autowired
	private CarService carService;
	@GetMapping("rent1")
	public String rent1(Model model,  String place) {
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
	public String car_view(Model model,  HttpSession session, int car_id, String place, String ins) {
		if(place.equals("")) {
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

		model.addAttribute("car", carService.selectCar(car_id));
		return "rent/rent2";
	}

	@GetMapping("pay")
	public String pay(Model model, int car_id) {
		model.addAttribute("car", carService.selectCar(car_id));
		return "pay/pay";
	}
	@GetMapping("pay_success")
	public String pay_success() {
		return "pay/pay_success";
	}

}
