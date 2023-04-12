package com.itwillbs.yata;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "index";
	}
	@GetMapping("event")
	public String event() {
		return "notice/event";
	}
	@GetMapping("notice_view")
	public String notice_view() {
//		return "notice/notice_list";
		return "notice/notice";
	}
	@GetMapping("customer_service")
	public String notice_service() {
		return "customer/customer_service_ke";
	}
	
	
}
