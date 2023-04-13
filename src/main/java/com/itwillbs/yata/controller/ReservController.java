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
	public String rent1(Model model) {
		model.addAttribute("carList",carService.selectCars());
		return "rent/rent";
	}
//	예약확인 
	@GetMapping("rent2")
	public String car_view(Model model, int car_id, String place, HttpSession session) {
		model.addAttribute("car", carService.selectCar(car_id));
		if(place.equals("") ) {
			model.addAttribute("msg","대여 위치를 선택해주세요!");
			return "fail_back";
		}
		if(session.getAttribute("member_email") == null) {
			model.addAttribute("msg","로그인이 필요합니다.");
			return "fail_back";
		}
		return "rent/rent2";
	}
	
	
	
	@GetMapping("pay")
	public String pay() {
		return "pay/pay";
	}
	@GetMapping("pay_success")
	public String pay_success() {
		return "pay/pay_success";
	}
//	car_model -> car_name 수정
	@GetMapping("/search")
	public String search(@RequestParam String car_name, String place, Model model) {
		System.out.println("search");
		
	    List<CarVO> cars = carService.searchByName(car_name);
	    System.out.println(cars);
	    model.addAttribute("place",place);
	    model.addAttribute("carList", cars);
	    
	    return "rent/rent";
	}
}
